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
    //???????????????????????????????????????
    context.read<DashboardNotifier>().getShopPlanList(Shop.me.id);
    context.read<DashboardNotifier>().getUserList();

    ///??????????????????
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar(
        title: "???????????????????????????",
        size: size,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        //navigation,main contents????????????
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

    ///??????????????????
  }

  Widget buildContents(BuildContext context) {
    String selectedPlan = "";
    String selectedUser = "";
    return SingleChildScrollView(
      // padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          PageTitle(title: "?????????????????????"),

          /**
           * ///????????????
           */
          StatefulBuilder(builder: (context, _setState) {
            List<ShopPlan> shopPlanList =
                context.select((DashboardState state) => state).shopPlanList;
            List<User> userList =
                context.select((DashboardState state) => state).userList;

            //????????????????????????
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
            userMenu.insert(0, DropdownMenuItem(child: Text("?????????"), value: "",));
            shopPlanMenu.insert(0, DropdownMenuItem(child: Text("?????????"), value: "",));

            //??????
            // String msg = context.select((DashboardState state) => state).

            return MyCard(
                contents: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1Title(title: "????????????????????????????????????)"),
                // Text(shopPlanList.map((e) => e.id).toList().toString()),
                // Text(userList.map((e) => e.first_name).toList().toString()),
                Text(
                  "???????????????",
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

                  }, child: Text("?????????????????????!")),

                ],),
                // Text(msg),

                ElevatedButton(onPressed: () async{

                  await context.read<ApiShopRepository>().deleteShopOrder(Shop.me.id);

                }, child: Text("???????????????!"))
              ],
            ));
          }),
          /**
           * ///????????????
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
                H1Title(title: "????????????: $applyStatusTitle"),
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
                    child: Text("??????????????????"))
              ],
            ));
          }),

          /**
           * ///?????????????????????
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
                        Wrap(children: [Text("???????????????????????????,")])
                      ],
                    ))
                .toList();

            return MyCard(
              contents: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H1Title(title: "???????????????????????????????????????"),
                  Column(
                    children: list,
                  ),
                ],
              ),
            );
          }),

          /**
           * ///????????????
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
                  child: Text("????????????"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("??????"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("room"),
                  color: AppColors.thBackgroundColor,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text("??????"),
                  color: AppColors.thBackgroundColor,
                ),
              ]),
            );

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "????????????"),
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
           * ///????????????
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
                    child: Text("????????????"),
                    color: AppColors.thBackgroundColor,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text("???????????????"),
                    color: AppColors.thBackgroundColor,
                  ),
                ]));

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "????????????"),
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
