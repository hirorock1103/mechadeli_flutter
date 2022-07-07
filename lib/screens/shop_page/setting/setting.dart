import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_toggle.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    ///ここから共通
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar( title: "test",size: size, ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,//navigation,main contents上部設定
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

    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "設定"),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "各種設定",
                  ),
                  Row(children: [
                    Text("プッシュ通知"),
                    SizedBox(width: 10,),
                    MyToggle(value: false, onChange: (value){ print("push: $value"); })

                  ],)
                ],
              )),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "お支払いはどうすればいいでしょうか？",
                  ),
                  Container(child: Text("テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),)
                ],
              )),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "お支払いはどうすればいいでしょうか？",
                  ),
                  Container(child: Text("テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),)
                ],
              )),
        ],
      ),
    );
  }

}
