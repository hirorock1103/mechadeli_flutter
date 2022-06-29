import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/screens/admin_page/shop_detail/shop_detail.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../common/enum.dart';
import '../../../domain/notifiers/app_notifier.dart';
import '../../../widgets/common/layout/my_card.dart';
import '../../../widgets/common/layout/my_table.dart';
import '../../../widgets/common/titles/h1_title.dart';
import 'schedule_notifier.dart';

class Schedule extends StatelessWidget {
  PageController page = PageController();
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ScheduleNotifier, ScheduleState>(
          create: (context) => ScheduleNotifier(
            context: context,
          ),
        )
      ],
      child: Schedule(),
    );
  }

  Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: page,
      children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                PageTitle(title: "予約一覧"),
                Builder(builder: (context) {
                  //watch selected flow
                  MechadeliFlow selectedFlow =
                      context.select((ScheduleState state) => state).currentFlow;
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
                                  context.read<ScheduleNotifier>().selectFlow(e);
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
                    H1Title(title: "予約一覧"),
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
                                // page.jumpToPage(1);
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
              ],
            ),
          ),
        ),
        SingleChildScrollView(child: ShopDetail.wrapped(),)
      ],
    );
  }
}
