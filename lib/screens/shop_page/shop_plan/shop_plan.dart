import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/sub_category.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/side_navi2.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_edit_with_title.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_form.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../../../domain/entities/shop.dart';
import '../../../domain/entities/shop_plan.dart' as ShopPlanEntity;
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
    //get data
    context.read<ShopPlanNotifier>().getShopPlanList();
    context.read<ShopPlanNotifier>().getSubCategory();

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

    TextEditingController planNameController = TextEditingController();
    TextEditingController planPriceController = TextEditingController();
    TextEditingController planDetailController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "ショッププラン管理"),
          Builder(builder: (context) {
            //カテゴリリストを作成する
            List<SubCategory> subCategoryList =
                context.select((ShopPlanState state) => state).subCategoryList;
            List<DropdownMenuItem<int>> menu = subCategoryList.map((e) {
              return DropdownMenuItem(
                child: Text(e.title + "(" + e.main_category_title + ")"),
                value: e.id,
              );
            }).toList();
            menu.insert(
                0,
                DropdownMenuItem<int>(
                  child: Text("未選択"),
                  value: 0,
                ));

            print(menu);

            return Builder(builder: (context) {
              // bool status = context.select((ShopPlanState state) => state).planDisplayStatus;
              // print(status);
              return MyCard(
                contents: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Title(title: "登録プラン登録"),
                    InkWell(
                      onTap: () {
                        //what to do
                        //open dialog or move to other page
                        buildPlanFormDialog(context, ShopPlanEntity.ShopPlan(), planNameController,
                            planPriceController, planDetailController, menu);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.lightBlueAccent,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("新しいプランを登録する")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "プラン登録方法",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    Text(
                      "Mechadeliウェブサイト上で表示されるプランを登録してください。",
                      softWrap: true,
                    ),
                    Text(
                      "ウェブサイト上への表示は表示ステータスのON・OFFを切り替えてください。",
                      softWrap: true,
                    ),
                  ],
                ),
              );
            });
          }),
          Builder(builder: (context) {
            //カテゴリリストを作成する
            List<SubCategory> subCategoryList =
                context.select((ShopPlanState state) => state).subCategoryList;
            List<DropdownMenuItem<int>> menu = subCategoryList.map((e) {
              return DropdownMenuItem(
                child: Text(e.title + "(" + e.main_category_title + ")"),
                value: e.id,
              );
            }).toList();
            menu.insert(
                0,
                DropdownMenuItem<int>(
                  child: Text("未選択"),
                  value: 0,
                ));

            //テスト
            List<ShopPlanEntity.ShopPlan> shopPlanList =
                context.select((ShopPlanState state) => state).shopPlanList;

            List<Widget> list = [];
            list.add(H1Title(title: "登録プラン一覧"));
            shopPlanList.forEach((shopPlan) {
              list.add(InkWell(
                onTap: () {
                  //show dialog
                  print(shopPlan.plan_title);
                },
                child: Card(
                  elevation: 5,
                  color: shopPlan.status == 0
                      ? Colors.grey.shade500
                      : Colors.grey.shade100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(width: 1, color: Colors.blueGrey)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      // leading: Container(child: Icon(Icons.check),),
                      focusColor: Colors.grey,
                      hoverColor: Colors.lightGreen,

                      subtitle: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Text(shopPlan.plan_price.toString() + "円"),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                shopPlan.main_category_title,
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.teal),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              child: Text(
                                shopPlan.sub_category_title,
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepOrangeAccent),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(shopPlan.created_at),
                          ],
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            shopPlan.plan_title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      trailing: InkWell(
                          onTap: () {
                            print("icon tap");
                            buildPlanFormDialog(context, shopPlan, planNameController, planPriceController, planDetailController, menu);
                          },
                          child: Icon(
                            Icons.edit,
                            color: Colors.blueAccent,
                          )),
                    ),
                  ),
                ),
              ));
            });

            return MyCard(
              contents: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: list,
              ),
            );
          }),
        ],
      ),
    );
  }

  Future<dynamic> buildPlanFormDialog(
      BuildContext context,
      ShopPlanEntity.ShopPlan shopPlan,
      TextEditingController planNameController,
      TextEditingController planPriceController,
      TextEditingController planDetailController,
      List<DropdownMenuItem<int>> menu) {
    return showDialog(
        context: context,
        builder: (_) {
          ///色々初期化
          String mode = shopPlan.id == 0 ? "new" : "edit";
          bool status = false;
          if(mode == "edit"){
            status = shopPlan.status == 1 ? true : false;
          }
          int selectedValue = mode == "new" ? 0: shopPlan.sub_category_id;
          planNameController.text =mode == "new"  ?  "" : shopPlan.plan_title;
          planPriceController.text =mode == "new"  ?  "" : shopPlan.plan_price.toString();
          planDetailController.text =mode == "new"  ?  "" : shopPlan.details;

          String title = "プラン登録";
          if(mode == "edit"){
             title = "プラン内容修正";
          }


          return AlertDialog(
            title: Center(child: Text(title)),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              var _setState = setState;
              return Container(
                width: 600,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MyTextEditWithTitle(
                        hintText: "",
                        title: "①プランタイトル",
                        controller: planNameController),
                    MyTextEditWithTitle(
                        hintText: "",
                        title: "②金額",
                        controller: planPriceController),
                    MyTextEditWithTitle(
                        hintText: "",
                        title: "③詳細",
                        controller: planDetailController),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "⑤表示ステータス",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: SwitchListTile(
                              value: status,
                              // title: Text("表示ステータス"),
                              secondary: status == 0
                                  ? Icon(
                                      Icons.visibility,
                                    )
                                  : Icon(Icons.visibility_off),
                              onChanged: (value) {
                                //notifier側で管理
                                // context.read<ShopPlanNotifier>().switchPlanStatus(value);
                                _setState(() {
                                  status = value;
                                });
                              }),
                          flex: 1,
                        ),
                      ],
                    ),
                    Container(
                        width: double.infinity,
                        child: Text(
                          "⑥カテゴリ選択（メイン・サブ）",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                    SizedBox(
                        width: double.infinity,
                        child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 15),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                              items: menu,
                              onChanged: (value) {
                                _setState(() {
                                  selectedValue = int.parse(value.toString());
                                });
                              },
                              value: selectedValue,
                              isDense: true,
                            )))),
                  ],
                ),
              );
            }),
            actions: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        print("========");
                        print(selectedValue);
                        print(status);
                        print("========");

                        Map<String, dynamic> data = {};
                        data['plan_title'] = planNameController.text;
                        data['plan_price'] = planPriceController.text;
                        data['details'] = planDetailController.text;
                        data['sub_category_id'] = selectedValue;
                        data['status'] = status;
                        data['main_category_id'] = 1;
                        data['shop_id'] = Shop.me.id;

                        //登録
                        if(mode == "new"){
                          print(data);
                          print("register");
                          context
                              .read<ShopPlanNotifier>()
                              .registerShopPlan(data, Shop.me.id);
                        }
                        //修正
                        if(mode == "edit"){
                          print(data);
                          print("edit");
                          context
                              .read<ShopPlanNotifier>()
                              .updateShopPlan(data, shopPlan.id);
                        }
                        Navigator.of(context).pop();
                      },
                      child: Text(title))),
            ],
          );
        });
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
