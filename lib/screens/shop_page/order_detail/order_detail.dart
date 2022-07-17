import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/option_plan.dart';
import 'package:mechadeli_flutter/domain/entities/order_child.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:mechadeli_flutter/screens/shop_page/basic_information/methods.dart';
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
      child: Builder(builder: (context) {
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
                    columnWidths: {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(2)
                    },
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

                            ///ダイアログ表示
                            buildShowDialogForUserDetail(context, user);
                          }),
                      buildTableRowByMap(
                          titles: {"th": "住所", "td": order.address}),
                      buildTableRowByMap(titles: {
                        "th": "合計",
                        "td": order.sub_total.toString() + "円"
                      }),
                      buildTableRowByMap(titles: {
                        "th": "税込合計",
                        "td": order.total.toString() + "円"
                      }),
                      buildTableRowByMap(
                          titles: {"th": "メインプラン", "td": mainPlanText},
                          ontap: () async {
                            print("main plan一覧情報を取得します");
                            //get shop plan list
                            final shopPlanList = await context
                                .read<ApiShopRepository>()
                                .getShopPlan(Shop.me.id);
                            //shop listのセレクトを作成する
                            List<DropdownMenuItem<String>> menu =
                                getShopPlanMenu(context, shopPlanList);
                            //選択中のメインID
                            String? selectedValue =
                                order.main_shop_plan_id.toString();
                            print("★selectedValue:" + selectedValue);

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
                                                  String? plan_title =
                                                      shopPlanList
                                                          ?.where((element) =>
                                                              element.id
                                                                  .toString() ==
                                                              selectedValue)
                                                          .first
                                                          .plan_title;
                                                  order = order.copyWith(
                                                      main_shop_plan_id:
                                                          int.parse(
                                                              selectedValue
                                                                  .toString()));
                                                  order = order.copyWith(
                                                      main_shop_plan_title:
                                                          plan_title ?? "");
                                                  context
                                                      .read<
                                                          OrderDetailNotifier>()
                                                      .setOrder(order);

                                                  Map<String, dynamic> data =
                                                      {};
                                                  data['shop_plan_id'] =
                                                      order.main_shop_plan_id;
                                                  await context
                                                      .read<ApiShopRepository>()
                                                      .updateOrderPlans(
                                                          data, order.id);

                                                  await context
                                                      .read<
                                                          OrderDetailNotifier>()
                                                      .getRecentOrder(order.id);

                                                  context
                                                      .read<
                                                          OrderDetailNotifier>()
                                                      .getOrderChildListByOrderId(
                                                          order.id);

                                                  Navigator.pop(_context);
                                                },
                                                child: Text("登録")),
                                            Text(
                                              "プランを変更するとオプションプランが解除されます。",
                                              style:
                                                  TextStyle(color: Colors.red),
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
                          ontap: () async {
                            //選択中のオプションプランリスト
                            //選択中のメインプランに紐づくオプションを表示
                            print(order.main_shop_plan_title);
                            print(order.main_shop_plan_id);
                            List<OptionPlan>? optionList = await context
                                .read<ApiShopRepository>()
                                .getOptionPlanByShopPlanId(
                                    order.main_shop_plan_id);
                            //selectedのリストだけを抽出 上 getOptionPlanByShopPlanIdが選択中か未選択かをselected : true false で返す
                            List<OptionPlan> optionListByMainPlan = optionList?.where((element) => element.selected == 1).toList() ?? [];
                            print("=== main plan ====");
                            String num1 = optionListByMainPlan.length.toString() ;
                            String num2 = optionList?.length.toString() ?? "";
                            print(num1 + "/" + num2);

                            //オーダー情報取得
                            List<OrderChild>? orderChilds = await context.read<ApiShopRepository>().getOrderChildListByOrderId(order.id);
                            // List<OrderChild> orderedOptionPlans = orderChilds.where((order) => order.option_plan_id > 0).toList();

                            ///ユーザーが申し込み中のオーダー ※メインプランに紐づく設定になっているはずだが・・
                            Map<int, bool> checkedList = {};///optionPlanId : true or falseを格納
                            optionListByMainPlan.forEach((option) {
                                checkedList[option.id] = false;
                                //orderChildsにデータがあればtrueにする
                                final isExists = orderChilds.where((element) => element.option_plan_id == option.id ).isNotEmpty;
                                if(isExists){
                                  checkedList[option.id] = true;
                                }
                            });
                            //選択中のオプション表示
                            print(checkedList);

                            showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: Text("メインプランのオプション設定"),
                                    content: StatefulBuilder(
                                      builder: (context, _setState) {
                                        return Container(
                                          width: 600,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                    width: double.infinity,
                                                    child: Text(
                                                      "オプションプラン申し込み",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight.bold),
                                                      textAlign: TextAlign.left,
                                                    )),

                                                Container(
                                                  child: ListView(
                                                    shrinkWrap: true,
                                                    children: optionListByMainPlan.map((e) {
                                                      return CheckboxListTile(
                                                          title: Text( "#" + e.id.toString() + " " + e.plan_title),
                                                          subtitle: Row(
                                                            children: [
                                                              Text(e.plan_price.toString() + "円")
                                                            ],
                                                          ),
                                                          value: checkedList[e.id],
                                                          onChanged: (value) {
                                                            _setState(() {
                                                              bool checked = value == true ? true : false;
                                                              checkedList[e.id] = checked;
                                                            });
                                                          });
                                                    }).toList(),
                                                  ),
                                                ),
                                                ElevatedButton(onPressed: () async{
                                                  print(checkedList);

                                                  ///api用データセット
                                                  Map<String, dynamic> map = {};
                                                  map['order_id'] = order.id;
                                                  map['shop_id'] = Shop.me.id;
                                                  map['checked_options'] = [];
                                                  List<int> selectedOptinId = [];
                                                  checkedList.forEach((optionId, isSelected) {
                                                    if (isSelected == true) {
                                                      selectedOptinId.add(optionId);
                                                    }
                                                  });
                                                  map['checked_options'] = selectedOptinId.join(",");

                                                  print(map);
                                                  final result = await context.read<ApiShopRepository>().updateOrderOptionPlans(map, order.id );
                                                  print(result);



                                                }, child: Text("登録")),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    ),
                                  );
                                });
                          }),
                      buildTableRowByMap(
                          titles: {
                            "th": "調整金額",
                            "td": order.fix_price.toString() + "円"
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
      }),
    );
  }

  //プラン変更用
  Future<dynamic> buildShowDialogForUserDetail(
      BuildContext context, User user) {
    return showDialog(
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
                    "td": (user.last_name + user.first_name)
                  }),
                  buildTableRowByMap(
                      titles: {"th": "住所", "td": (user.address)}),
                  buildTableRowByMap(
                      titles: {"th": "電話番号", "td": (user.phone)}),
                ],
              ),
            ),
          );
        });
  }
}
