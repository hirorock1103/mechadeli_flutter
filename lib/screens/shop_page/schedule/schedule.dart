import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/domain/entities/order.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_edit_with_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../common/enum.dart';
import '../../../widgets/common/layout/my_card.dart';
import '../../../widgets/common/layout/my_table.dart';
import '../../../widgets/common/titles/h1_title.dart';
import '../../shop_page/order_detail/order_detail.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';
import '../widgets/side_navi2.dart';
import 'schedule_notifier.dart';

class Schedule extends StatelessWidget {

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
    //get data
    context.read<ScheduleNotifier>().getOrderList();

    ///ここから共通
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar(
        title: "ショップページ",
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
    //初期化
    String selectedItem = "1";
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PageTitle(title: "予約一覧"),
          // Builder(builder: (context) {
          StatefulBuilder(builder: (context, _setState) {
            //controller
            TextEditingController customerNameController =
                TextEditingController();
            TextEditingController addressController = TextEditingController();
            //selectedItem

            //button list
            List<DropdownMenuItem<String>> menu = MechadeliFlow.values
                .map((e) => DropdownMenuItem(
                      child: Text(MechadeliFlowContents[e]['title'].toString()),
                      value: MechadeliFlowContents[e]['id'].toString(),
                    ))
                .toList();
            menu.insert(
              0,
              DropdownMenuItem(child: Text("ステータスを選択してください"), value: "0"),
            );

            return MyCard(
              contents: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H1Title(title: "予約状況"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ステータス",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: DropdownButton(
                                value: selectedItem,
                                items: menu,
                                // isExpanded: true,
                                onChanged: (value) {
                                  _setState(() {
                                    selectedItem = value.toString();
                                  });
                                }),
                          ),
                          ElevatedButton(
                              onPressed: () {

                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [Icon(Icons.search), Text("絞り込み")],
                              )),
                        ],
                      ),
                    ],
                  ),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //         child: MyTextEditWithTitle(
                  //             hintText: "",
                  //             title: "顧客名",
                  //             controller: customerNameController)),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Expanded(
                  //         child: MyTextEditWithTitle(
                  //             hintText: "",
                  //             title: "都道府県",
                  //             controller: addressController))
                  //   ],
                  // ),
                ],
              ),
            );
          }),
          Builder(builder: (context) {
            Size size = MediaQuery.of(context).size;

            List<Order> orderlist =
                context.select((ScheduleState state) => state).orderList;

            return MyCard(
                contents: Column(
              children: [
                H1Title(title: "予約一覧"),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: orderlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (_){ return OrderDetail.wrapped(orderlist[index]); }));
                        },
                        child: Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
                            child: ListTile(
                              title: Wrap(children: [
                                Container(
                                  child: Text(
                                    "日程確認中",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.lime.shade500,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.lime)),
                                ),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Text("プラン："+( orderlist[index].main_shop_plan_title.isNotEmpty ? orderlist[index].main_shop_plan_title : "メインプラン取得なし") ))
                              ]),
                              subtitle: Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Wrap(
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.schedule, size: 15,),
                                        Text("2022/05/01"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.person, size: 15,),
                                        Flexible(child: Text(orderlist[index].user_last_name)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.pin_drop, size: 15,),
                                        Text(orderlist[index].address),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // trailing: Icon(Icons.arrow_forward_ios_rounded),
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ));
          }),
        ],
      ),
    );
  }
}
