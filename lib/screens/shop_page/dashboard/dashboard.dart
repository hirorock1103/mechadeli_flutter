import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/entities/shop_plan.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/domain/repositories/api_shop_repository.dart';
import 'package:mechadeli_flutter/screens/shop_page/login/shop_login.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/app_bar.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/drawer.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_table.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../domain/entities/notice.dart';
import '../../../domain/notifiers/app_notifier.dart';
import '../order_detail/order_detail.dart';
import '../widgets/side_navi.dart';
import '../widgets/side_navi2.dart';
import 'dashboard_notifier.dart';

class DashBoard extends StatelessWidget {
  int testCount = 10;

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
    if (context.read<AppState>().loginStatus != UserLoginStatus.login) {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return ShopLoginPage.wrapped();
      }));
    }
    context.read<DashboardNotifier>().getNoticeList();
    context.read<DashboardNotifier>().getMyOrderList();
    //テスト用ショッププラン取得
    context.read<DashboardNotifier>().getShopPlanList(Shop.me.id);
    context.read<DashboardNotifier>().getUserList();

    ///ここから共通
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar(
        title: "ショップマイページ",
        size: size,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        //navigation,main contents上部設定
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
    String selectedPlan = "";
    String selectedUser = "";
    return SingleChildScrollView(
      // padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          PageTitle(title: "ダッシュボード"),

          /**
           * ///お知らせ
           */
          StatefulBuilder(builder: (context, _setState) {
            List<ShopPlan> shopPlanList =
                context.select((DashboardState state) => state).shopPlanList;
            List<User> userList =
                context.select((DashboardState state) => state).userList;

            //購入者プルダウン
            List<DropdownMenuItem<String>> shopPlanMenu = shopPlanList
                .map((e) => DropdownMenuItem(
                      child: Text(e.plan_title),
                      value: e.id.toString(),
                    ))
                .toList();
            List<DropdownMenuItem<String>> userMenu = userList
                .map((e) => DropdownMenuItem(
                      child: Text(e.first_name),
                      value: e.id.toString(),
                    ))
                .toList();
            userMenu.insert(0, DropdownMenuItem(child: Text("未選択"), value: "",));
            shopPlanMenu.insert(0, DropdownMenuItem(child: Text("未選択"), value: "",));

            //結果
            // String msg = context.select((DashboardState state) => state).

            return MyCard(
                contents: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1Title(title: "ユーザー申し込み（テスト)"),
                // Text(shopPlanList.map((e) => e.id).toList().toString()),
                // Text(userList.map((e) => e.first_name).toList().toString()),
                Text(
                  "テスト購入",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(children: [
                  Text("user"),
                  SizedBox(width: 10,),
                  DropdownButton(
                      value: selectedUser,
                      items: userMenu,
                      onChanged: (value) {
                        print(value);
                        _setState((){
                          selectedUser = value.toString();
                        });
                      }),
                  SizedBox(width: 20,),
                  Text("plan"),
                  SizedBox(width: 10,),
                  DropdownButton(
                      value: selectedPlan,
                      items: shopPlanMenu,
                      onChanged: (value) {
                        print(value);
                        _setState((){
                          selectedPlan = value.toString();
                        });
                      }),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){

                    Map<String, dynamic> data = {};
                    data['shop_id'] = Shop.me.id;
                    data['user_id'] = selectedUser;
                    data['shop_plan_id'] = selectedPlan;
                    context.read<ApiShopRepository>().makeOrder(data);

                  }, child: Text("テスト申し込み!")),

                ],),
                // Text(msg),

                ElevatedButton(onPressed: () async{

                  await context.read<ApiShopRepository>().deleteShopOrder(Shop.me.id);

                }, child: Text("予約全削除!"))
              ],
            ));
          }),
          /**
           * ///審査状況
           */
          Builder(builder: (context) {
            context.read<DashboardNotifier>().checkApplyStatus();
            ApplyStatus applyStatus =
                context.select((DashboardState state) => state).applyStatus;
            String applyStatusTitle =
                context.read<DashboardNotifier>().getApplyStatusTitle();
            String applyStatusMessage =
                context.read<DashboardNotifier>().getApplyStatusMessage();

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "審査状況: $applyStatusTitle"),
                Wrap(
                  children: [
                    Icon(
                      Icons.error,
                    ),
                    Text(applyStatusMessage)
                  ],
                ),
                if (applyStatus == ApplyStatus.notYet)
                  SizedBox(
                    height: 20,
                  ),
                ElevatedButton(
                    onPressed: () {
                      print("test");
                    },
                    child: Text("基本情報入力"))
              ],
            ));
          }),

          /**
           * ///予約ステータス
           */
          Builder(builder: (context) {
            //watch selected flow
            MechadeliFlow selectedFlow =
                context.select((DashboardState state) => state).currentFlow;
            //button list
            List<Widget> list = MechadeliFlow.values
                .map((e) => Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: SizedBox(
                            width: 150,
                            height: 40,
                            child: ElevatedButton(
                                style: selectedFlow == e
                                    ? ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.cyan))
                                    : null,
                                onPressed: () {
                                  context
                                      .read<DashboardNotifier>()
                                      .selectFlow(e);
                                },
                                child: Text(MechadeliFlowContents[e]['title']
                                        .toString() +
                                    " (2) ")),
                          ),
                        ),
                        Wrap(children: [Text("説明文章が入ります,")])
                      ],
                    ))
                .toList();

            return MyCard(
              contents: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H1Title(title: "予約ステータス毎の状況確認"),
                  Column(
                    children: list,
                  ),
                ],
              ),
            );
          }),

          /**
           * ///予約一覧
           */
          Builder(builder: (context) {
            List<Order> list =
                context.select((DashboardState state) => state).orderList;
            print(list);
            List<TableRow> orderList = list.map((e) {
              return TableRow(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(e.shop_id.toString()),
                      Text(e.created_at),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(e.progress.toString()),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetail(
                                    order: Order(),
                                  )));
                    },
                    child: Text("chat"),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetail(
                                    order: Order(),
                                  )));
                    },
                    child: Text("chat"),
                  ),
                ),
              ]);
            }).toList();

            orderList.insert(
              0,
              TableRow(children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("予約日時"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("状態"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("room"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("詳細"),
                  color: AppColors.thBackgroundColor,
                ),
              ]),
            );

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "予約一覧"),
                MyTable(
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                  },
                  rowList: orderList,
                ),
              ],
            ));
          }),

          /**
           * ///お知らせ
           */
          Builder(builder: (context) {
            //news list
            List<Notice> list =
                context.select((DashboardState state) => state).noticeList;
            List<TableRow> tableList = list.map((e) {
              return TableRow(children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(e.title),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(e.contents),
                ),
              ]);
            }).toList();
            tableList.insert(
                0,
                TableRow(children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("タイトル"),
                    color: AppColors.thBackgroundColor,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("コンテンツ"),
                    color: AppColors.thBackgroundColor,
                  ),
                ]));

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "お知らせ"),
                MyTable(
                  columnWidths: {0: FlexColumnWidth(1), 1: FlexColumnWidth(2)},
                  rowList: tableList,
                ),
              ],
            ));
          }),
        ],
      ),
    );
  }
}
