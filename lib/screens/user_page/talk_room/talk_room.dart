import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../widgets/common/layout/my_table.dart';
import '../dashboard/dashboard_notifier.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';

class TalkRoom extends StatefulWidget {
  const TalkRoom({Key? key}) : super(key: key);

  @override
  _TalkRoomState createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  @override
  Widget build(BuildContext context) {

    ///ここから共通
    final size = MediaQuery.of(context).size;
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
          PageTitle(title: "トークルーム"),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "次のステップは？",
                  ),
                  Container(
                    child: Text("予約は確定していません。店舗側とチャットでご相談いただき、日程を確定させてください。"),
                  )
                ],
              )),

          Row(children: [
            Expanded(
              flex: 1,
              child: MyCard(
                  contents: Column(
                    children: [
                      H1Title(
                        title: "test1？",
                      ),
                      Container(
                        child: Text(
                            "テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),
                      )
                    ],
                  )),
            ),
            Expanded(
              flex: 1,
              child: MyCard(
                  contents: Column(
                    children: [
                      H1Title(
                        title: "test2?",
                      ),
                      Container(
                        child: Text(
                            "テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),
                      )
                    ],
                  )),
            ),

          ],),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "ご依頼詳細",
                  ),
                  MyTable(
                    rowList: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("受信日時"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("#予約ID"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("申込みプラン"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("申込みプラン"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("税込合計"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("店舗名"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("申込情報"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("税込合計"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                      ]),
                    ],
                  ),
                ],
              )),

        ],
      ),
    );
  }
}
