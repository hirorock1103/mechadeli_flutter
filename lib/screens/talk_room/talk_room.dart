import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

class TalkRoom extends StatefulWidget {
  const TalkRoom({Key? key}) : super(key: key);

  @override
  _TalkRoomState createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "よくあるご質問"),
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
