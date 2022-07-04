import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_chat_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "chat"),
          MyChatCard(shopName: "testShop", message: "helllo-----------------------!", date: "today", shopImagePath: "assets/images/1.png"),
        ],
      ),
    );
  }

}
