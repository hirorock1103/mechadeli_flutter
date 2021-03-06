import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_form.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    ///ここから共通
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar( title: "test",size: size, ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          size.width > AppConstant.tabletMaxSize ? Container(child: Text("test"),width: 200,) : SideNavgation(),
          Expanded(
            child: buildContents(context),
          ),
        ],
      ),
    );
    ///ここまで共通

  }

  Widget buildContents(BuildContext context){

    TextEditingController userNameController = TextEditingController();
    TextEditingController userTelController = TextEditingController();
    TextEditingController userAddressController = TextEditingController();


    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "プロフィール設定"),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "あなたのプロフィールを設定してください",
                  ),
                  Row(
                    children: [
                      Expanded(flex: 1 , child: Text("お名前")),
                      Expanded(flex: 5, child: MyTextForm(hintText: "姓名", controller: userNameController,))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(flex: 1 , child: Text("住所")),
                      Expanded(flex: 5, child: MyTextForm(hintText: "ご住所を入力してください", controller: userAddressController,))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(flex: 1 , child: Text("tel")),
                      Expanded(flex: 5, child: MyTextForm(hintText: "ハイフンなし", controller: userTelController,))
                    ],
                  ),
                  SizedBox(height: 10,),
                  // Row(children: [
                  //   Text("お名前"),
                  //
                  // ],)
                ],
              )),

        ],
      ),
    );
  }

}
