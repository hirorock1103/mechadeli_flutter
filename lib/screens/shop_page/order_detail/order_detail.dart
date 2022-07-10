import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/order_child.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/order.dart';
import '../../../widgets/common/layout/my_table.dart';
import '../../../widgets/common/methods/tables.dart';
import '../dashboard/dashboard_notifier.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';
import '../widgets/side_navi2.dart';
import 'order_detail_notifier.dart';

class OrderDetail extends StatelessWidget {
  Order order;

  static Widget wrapped(Order order) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<OrderDetailNotifier, OrderDetailState>(
          create: (context) => OrderDetailNotifier(
            context: context,
          ),
        )
      ],
      child: OrderDetail(
        order: order,
      ),
    );
  }

  OrderDetail({required this.order, Key? key}) : super(key: key);

//   @override
//   _OrderDetailState createState() => _OrderDetailState();
// }
//
// class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    print("order detail");

    context.read<OrderDetailNotifier>().getOrderChildListByOrderId(order.id);

    ///ここから共通
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar(
        title: "ショップマイページ",
        size: size,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          size.width > AppConstant.tabletMaxSize
              ? SideNavgation2()
              : SideNavgation(),
          Expanded(
            child: buildContents(context),
          ),
        ],
      ),
    );

    ///ここまで共通
  }

  Widget buildContents(BuildContext context) {
    MechadeliFlow currentFlow = MechadeliFlow.cancel;
    MechadeliFlowContents.forEach((key, value) {
      if (value['id'] == order.progress) {
        currentFlow = key;
      }
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "オーダー詳細 #" + order.id.toString()),
          MyCard(
              contents: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1Title(
                title: "現在のフロー[ " +
                    MechadeliFlowContents[currentFlow]['title'] +
                    "]です。",
              ),
              Container(
                child: Text(MechadeliFlowContents[currentFlow]['msg']),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(order.toString()),
              )
            ],
          )),
          MyCard(
              contents: Column(
            children: [
              H1Title(
                title: "ご依頼詳細",
              ),
              Builder(builder: (context) {
                List<OrderChild> orderChildList = context
                    .select((OrderDetailState state) => state)
                    .orderChildList;
                List<String> mainPlanList = [];
                List<String> optionPlanList = [];
                for (var child in orderChildList) {
                  if (child.type == 0) {
                    mainPlanList.add(child.shop_plan_title_current +
                        " (" +
                        child.price.toString() +
                        "円)");
                  } else {
                    optionPlanList.add(child.option_plan_title_current +
                        " (" +
                        child.price.toString() +
                        "円)");
                  }
                }

                String mainPlanText = mainPlanList.join("\n");
                String optionPlanText = optionPlanList.join("\n");
                return MyTable(
                  columnWidths: {0: FlexColumnWidth(1), 1: FlexColumnWidth(2)},
                  rowList: [
                    buildTableRowByMap(
                        titles: {"th": "予約作成日時", "td": order.created_at}),
                    buildTableRowByMap(
                        titles: {"th": "店舗", "td": order.shop_name}),
                    buildTableRowByMap(
                        titles: {
                          "th": "顧客名",
                          "td": order.user_last_name + order.user_first_name
                        },
                        ontap: () async{

                          //ユーザー情報の取得

                          //ダイアログ表示
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  title: Text("顧客詳細情報"),
                                  content: MyTable(
                                    columnWidths: {
                                      0 : FlexColumnWidth(1),
                                      2 : FlexColumnWidth(1),
                                    },
                                    rowList: [
                                      buildTableRowByMap(titles: { "th":  "test", "td" : "test" }),
                                      buildTableRowByMap(titles: { "th":  "test", "td" : "test" }),
                                    ],
                                  ),
                                );
                              });
                        }),
                    buildTableRowByMap(
                        titles: {"th": "住所", "td": order.address}),
                    buildTableRowByMap(
                        titles: {"th": "合計", "td": order.created_at}),
                    buildTableRowByMap(
                        titles: {"th": "メインプラン", "td": mainPlanText},
                        ontap: () {
                          print("test");
                        }),
                    buildTableRowByMap(
                        titles: {"th": "オプションプラン", "td": optionPlanText},
                        ontap: () {
                          print("test");
                        }),
                    buildTableRowByMap(
                        titles: {"th": "税込合計", "td": order.created_at}),
                    buildTableRowByMap(
                        titles: {"th": "予約作成日時", "td": order.created_at}),
                    buildTableRowByMap(
                        titles: {"th": "予約作成日時", "td": order.created_at}),
                  ],
                );
              }),
            ],
          )),
        ],
      ),
    );
  }
}
