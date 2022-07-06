import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_form.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h2_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../../../domain/entities/shop.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'shop_plan_notifier.dart';

class ShopPlan extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ShopPlanNotifier, ShopPlanState>(
          create: (context) => ShopPlanNotifier(
            context: context,
          ),
        )
      ],
      child: ShopPlan(),
    );
  }

  const ShopPlan({Key? key}) : super(key: key);

//   @override
//   _ShopPlanState createState() => _ShopPlanState();
// }
//
// class _ShopPlanState extends State<ShopPlan> {
  @override
  Widget build(BuildContext context) {
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
        children: [
          size.width > AppConstant.tabletMaxSize
              ? Container(
                  child: Text("test"),
                  width: 200,
                )
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
    //textEditingControllerをセット
    Shop shopFormat = Shop();
    Map<String, TextEditingController> editMap = {};
    shopFormat.toJson().entries.forEach((e) {
      editMap[e.key] = TextEditingController();
    });
    Shop shop = Shop.me;
    shop.toJson().entries.forEach((e) {
      editMap[e.key]?.text = e.value.toString();
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "ショッププラン管理"),
          MyCard(
            contents: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1Title(title: "登録プラン一覧"),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.check),
                    focusColor: Colors.grey,
                    hoverColor: Colors.lightGreen,
                    tileColor: Colors.lightGreen.shade300,
                    subtitle: Row(
                      children: [
                        Text("5,500円"),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "main:test1",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "sub:test2",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepOrangeAccent),
                        ),
                      ],
                    ),
                    title: Row(
                      children: [
                        Text("うきうきプランマックス"),
                      ],
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.check),
                    focusColor: Colors.grey,
                    hoverColor: Colors.lightGreen,
                    tileColor: Colors.lightGreen.shade300,
                    subtitle: Row(
                      children: [
                        Text("5,500円"),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "main:test1",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "sub:test2",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepOrangeAccent),
                        ),
                      ],
                    ),
                    title: Row(
                      children: [
                        Text("うきうきプランマックス"),
                      ],
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),

                Card(
                  child: ListTile(
                    leading: Icon(Icons.check),
                    focusColor: Colors.grey,
                    hoverColor: Colors.lightGreen,
                    tileColor: Colors.lightGreen.shade300,
                    subtitle: Row(
                      children: [
                        Text("5,500円"),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "main:test1",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          child: Text(
                            "sub:test2",
                            style: TextStyle(color: Colors.white),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.deepOrangeAccent),
                        ),
                      ],
                    ),
                    title: Row(
                      children: [
                        Text("うきうきプランマックス"),
                      ],
                    ),
                    trailing: Icon(Icons.edit),
                  ),
                ),
              ],
            ),
          ),
          /*
          MyCard(
              contents: Column(
            children: [
              H1Title(
                title: "店舗の営業情報",
              ),
              buildRow("キャッチコピー", "", editMap['catch_copy']!),
              buildRow("営業時間", "", editMap['sales_time_str']!),
              buildRow("定休日", "", editMap['holiday_str']!),
              buildRow("コメント", "", editMap['message']!),
              ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> data = {};
                    data["catch_copy"] = editMap['catch_copy']!.text;
                    data["sales_time_str"] = editMap['sales_time_str']!.text;
                    data["holiday_str"] = editMap['holiday_str']!.text;
                    data["message"] = editMap['message']!.text;
                    int shopId = Shop.me.id;
                    context.read<ShopPlanNotifier>().updateShop(data, shopId);
                  },
                  child: Text("店舗営業情報の更新"))
            ],
          )),
           */
        ],
      ),
    );
  }

  Widget buildRow(
      String title, String hintText, TextEditingController controller) {
    return Builder(builder: (context) {
      Size size = MediaQuery.of(context).size;
      if (size.width <= AppConstant.phoneMaxSize) {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              MyTextForm(
                hintText: hintText,
                controller: controller,
              )
            ],
          ),
        );
      } else {
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Row(
            children: [
              Expanded(flex: 2, child: Text(title)),
              Expanded(
                  flex: 5,
                  child: MyTextForm(
                    hintText: hintText,
                    controller: controller,
                  ))
            ],
          ),
        );
      }
    });
  }
}
