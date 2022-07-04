import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';
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

class OrderDetail extends StatefulWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
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
                    columnWidths: {
                      0 : FlexColumnWidth(1),
                      1 : FlexColumnWidth(2)
                    },
                    rowList: [
                      TableRow(children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Text("受信日時"),
                          decoration: BoxDecoration(
                            color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
                          decoration: BoxDecoration(
                              color: AppColors.thBackgroundColor
                          ),
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
