import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/order_child.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/order.dart';
import '../../../domain/entities/user.dart';
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
    context.read<OrderDetailNotifier>().setOrder(order);
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
      child: Builder(
        builder: (context) {
          order = context.select((OrderDetailState state) => state).order;
          return Column(
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
                  ),
                ],
              )),
              MyCard(
                  contents: Column(
                children: [
                  H1Title(
                    title: "ご依頼詳細",
                  ),
                  Text(
                    "※顧客が内容確定に同意するまでは内容の編集可能",
                    style: TextStyle(color: Colors.red),
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
                            ontap: () async {
                              //ユーザー情報の取得
                              User user = await context
                                      .read<ApiShopRepository>()
                                      .getUserById(order.user_id) ??
                                  User();

                              //ダイアログ表示
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: Text("顧客詳細情報"),
                                      content: Container(
                                        width: 500,
                                        child: MyTable(
                                          columnWidths: {
                                            0: FlexColumnWidth(.6),
                                            2: FlexColumnWidth(1),
                                          },
                                          rowList: [
                                            buildTableRowByMap(titles: {
                                              "th": "顧客氏名",
                                              "td":
                                                  (user.last_name + user.first_name)
                                            }),
                                            buildTableRowByMap(titles: {
                                              "th": "住所",
                                              "td": (user.address)
                                            }),
                                            buildTableRowByMap(titles: {
                                              "th": "電話番号",
                                              "td": (user.phone)
                                            }),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        buildTableRowByMap(
                            titles: {"th": "住所", "td": order.address}),
                        buildTableRowByMap(
                            titles: {"th": "合計", "td": order.sub_total.toString() + "円"}),
                        buildTableRowByMap(
                            titles: {"th": "税込合計", "td": order.total.toString()+ "円"}),
                        buildTableRowByMap(
                            titles: {"th": "メインプラン", "td": mainPlanText},
                            ontap: () async {
                              print("main plan一覧情報を取得します");
                              //get shop plan list
                              final shopPlanList = await context
                                  .read<ApiShopRepository>()
                                  .getShopPlan(Shop.me.id);
                              //shop listのセレクトを作成する
                              List<DropdownMenuItem<String>> menu = shopPlanList
                                      ?.map((e) {
                                    return DropdownMenuItem(

                                        value: e.id.toString(),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("プラン名：" +
                                                e.id.toString() +
                                                " " +
                                                e.plan_title),
                                            if(MediaQuery.of(context).size.width > AppConstant.tabletMaxSize)
                                              Row(
                                                   children: [
                                                   Text(
                                                   "price: ¥" +
                                                   e.plan_price.toString(),
                                                   style: TextStyle(fontSize: 12),
                                                   ),
                                                   SizedBox(
                                                   width: 10,
                                                   ),
                                                   Flexible(
                                                   child: Text(
                                                   "(" +
                                                   e.main_category_title +
                                                   "/" +
                                                   e.sub_category_title +
                                                   ")",
                                                   style: TextStyle(fontSize: 12)),
                                                   ),
                                                   ],
                                                   ),
                                          ],
                                        ),

                                    );
                                  }).toList() ??
                                  [];

                              menu.insert(0,
                                  DropdownMenuItem(value: "0", child: Text("未選択")));

                              String? selectedValue =
                                  order.main_shop_plan_id.toString();
                              //
                              print(selectedValue);

                              //ダイアログ表示
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return StatefulBuilder(
                                        builder: (_context, _setState) {
                                      return AlertDialog(
                                        title: Text("ショッププラン編集"),
                                        content: Container(
                                          width: 500,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                child: Center(
                                                  child: DropdownButton(
                                                      // isExpanded: true,
                                                      value: selectedValue,
                                                      items: menu,
                                                      onChanged: (value) {
                                                        _setState(() {
                                                          selectedValue =
                                                              value.toString();
                                                        });
                                                      }),
                                                ),
                                                padding: EdgeInsets.all(20),
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              ElevatedButton(
                                                  onPressed: () async {
                                                    //プランを変更
                                                    String? plan_title = shopPlanList ?.where((element) => element.id .toString() == selectedValue) .first .plan_title;
                                                    order = order.copyWith(
                                                        main_shop_plan_id:
                                                            int.parse(selectedValue
                                                                .toString()));
                                                    order = order.copyWith(
                                                        main_shop_plan_title:
                                                            plan_title ?? "");
                                                    context
                                                        .read<OrderDetailNotifier>()
                                                        .setOrder(order);

                                                    Map<String, dynamic> data = {};
                                                    data['shop_plan_id'] =
                                                        order.main_shop_plan_id;
                                                    await context
                                                        .read<ApiShopRepository>()
                                                        .updateOrderPlans(
                                                            data, order.id);

                                                    await context.read<OrderDetailNotifier>().getRecentOrder(order.id);

                                                    context
                                                        .read<OrderDetailNotifier>()
                                                        .getOrderChildListByOrderId(
                                                            order.id);

                                                    Navigator.pop(_context);
                                                  },
                                                  child: Text("登録")),
                                              Text(
                                                "プランを変更するとオプションプランが解除されます。",
                                                style: TextStyle(color: Colors.red),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                                  });
                            }),
                        buildTableRowByMap(
                            titles: {"th": "オプションプラン", "td": optionPlanText},
                            ontap: () {
                              print("test");
                            }),
                        buildTableRowByMap(
                            titles: {
                              "th": "調整金額",
                              "td": order.fix_price.toString()+ "円"
                            },
                            ontap: () {
                              print("test");
                              //ダイアログ表示
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: Text("顧客詳細情報"),
                                      content: Container(
                                        width: 500,
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        buildTableRowByMap(
                            titles: {
                              "th": "調整内容",
                              "td": order.fix_price_reason.toString()
                            },
                            ontap: () {
                              print("test");
                              //ダイアログ表示
                              showDialog(
                                  context: context,
                                  builder: (_) {
                                    return AlertDialog(
                                      title: Text("顧客詳細情報"),
                                      content: Container(
                                        width: 500,
                                        child: Column(
                                          children: [],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        buildTableRowByMap(
                            titles: {"th": "予約作成日時", "td": order.created_at}),
                        buildTableRowByMap(
                            titles: {"th": "予約作成日時", "td": order.created_at}),
                      ],
                    );
                  }),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("確認依頼を出す"))
                ],
              )),
            ],
          );
        }
      ),
    );
  }
}
