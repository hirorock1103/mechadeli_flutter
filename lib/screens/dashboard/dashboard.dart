import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/screens/talk_room/talk_room.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_table.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../domain/notifiers/app_notifier.dart';
import 'dashboard_notifier.dart';

class DashBoard extends StatelessWidget {
  int testCount = 10;
  PageController page = PageController();

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<DashboardNotifier, DashboardState>(
          create: (context) => DashboardNotifier(
            context: context,
          ),
        )
      ],
      child: DashBoard(),
    );
  }

  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: page,
      children: [
        SingleChildScrollView(
          // padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              //
              PageTitle(title: "ダッシュボード"),

              Builder(builder: (context) {
                //watch selected flow
                MechadeliFlow selectedFlow =
                    context.select((DashboardState state) => state).currentFlow;
                //button list
                List<Widget> list = MechadeliFlow.values
                    .map((e) => Container(
                          margin: EdgeInsets.all(5),
                          child: ElevatedButton(
                              style: selectedFlow == e
                                  ? ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.blue))
                                  : null,
                              onPressed: () {
                                context.read<DashboardNotifier>().selectFlow(e);
                              },
                              child: Text(
                                  MechadeliFlowContents[e]['title'].toString())),
                        ))
                    .toList();

                return MyCard(
                  contents: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1Title(title: "予約状況"),
                      Wrap(
                        children: list,
                      ),
                    ],
                  ),
                );
              }),

              MyCard(
                  contents: Column(
                children: [
                  H1Title(title: "メッセージ"),
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
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("予約ID"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("room"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("受信日時"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("予約ID"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {
                              page.jumpToPage(1);
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => TalkRoom()));
                            },
                            child: Text("chat room"),
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              )),
              MyCard(
                  contents: Column(
                children: [
                  H1Title(title: "お知らせ"),
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
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("予約ID"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("room"),
                        ),
                      ]),
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("受信日時"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("メッセージ"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("予約ID"),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: () {
                              print("");
                            },
                            child: Text("chat room"),
                          ),
                        ),
                      ])
                    ],
                  ),
                ],
              )),
            ],
          ),
        ),
        SingleChildScrollView(child: TalkRoom()),
      ],
    );
  }
}
