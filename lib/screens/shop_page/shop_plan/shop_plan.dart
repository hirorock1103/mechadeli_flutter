import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/option_plan.dart';
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

  //controller
  TextEditingController planNameController = TextEditingController();
  TextEditingController planPriceController = TextEditingController();
  TextEditingController planDetailController = TextEditingController();

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

  ShopPlan({Key? key}) : super(key: key);

//   @override
//   _ShopPlanState createState() => _ShopPlanState();
// }
//
// class _ShopPlanState extends State<ShopPlan> {
  @override
  Widget build(BuildContext context) {
    //get data
    context.read<ShopPlanNotifier>().getShopPlanList();
    context.read<ShopPlanNotifier>().getOptionPlanList();
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
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          PageTitle(title: "ショッププラン管理"),
          Builder(builder: (context) {
            //カテゴリリストを作成する
            List<SubCategory> subCategoryList =
                context.select((ShopPlanState state) => state).subCategoryList;
            List<DropdownMenuItem<int>> menu = subCategoryList.map((e) {
              return DropdownMenuItem(
                child: Text(e.main_category_title + " (" + e.title + ")"),
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

            //option plan menu
            List<OptionPlan> options =
                context.select((ShopPlanState state) => state).optionPlanList;
            print("option called 1");

            return Builder(builder: (context) {
              // bool status = context.select((ShopPlanState state) => state).planDisplayStatus;
              // print(status);
              return MyCard(
                contents: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Title(title: "登録プラン登録"),
                    InkWell(
                      onTap: () async {
                        //clear options
                        options = await context
                            .read<ShopPlanNotifier>()
                            .clearOptions();
                        // await Future.delayed(Duration(seconds: 1));

                        //what to do
                        //open dialog or move to other page
                        buildPlanFormDialog(
                            context,
                            ShopPlanEntity.ShopPlan(),
                            planNameController,
                            planPriceController,
                            planDetailController,
                            menu,
                            options);
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
            Size size = MediaQuery.of(context).size;

            //カテゴリリストを作成する
            List<SubCategory> subCategoryList =
                context.select((ShopPlanState state) => state).subCategoryList;
            List<DropdownMenuItem<int>> menu = subCategoryList.map((e) {
              return DropdownMenuItem(
                child: Text(e.main_category_title + " (" + e.title + ")"),
                value: e.id,
              );
            }).toList();
            menu.insert(
                0,
                DropdownMenuItem<int>(
                  child: Text("未選択"),
                  value: 0,
                ));

            //option plan menu
            List<OptionPlan> options =
                context.select((ShopPlanState state) => state).optionPlanList;

            print("option called");

            //テスト
            List<ShopPlanEntity.ShopPlan> shopPlanList =
                context.select((ShopPlanState state) => state).shopPlanList;

            //表示用リスト
            List<Widget> list = [];
            //title
            list.add(H1Title(title: "登録プラン一覧"));
            //plan list格納用
            List<Widget> views = [];
            shopPlanList.forEach((shopPlan) {
              views.add(InkWell(
                onTap: () {
                  //show dialog
                  print(shopPlan.plan_title);
                },
                child: Container(
                  width: size.width <= AppConstant.phoneMaxSize ? size.width * 0.8 : size.width / 3,
                  child: Card(
                    elevation: 5,
                    color: shopPlan.status == 0
                        ? Colors.grey.shade200
                        : Colors.grey.shade100,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(width: 1, color: Colors.blueGrey)),
                    child: ListTile(
                      // leading: Container(child: Icon(Icons.check),),
                      focusColor: Colors.grey,
                      hoverColor: Colors.lightGreen,
                      subtitle: Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("登録日時:" + shopPlan.created_at, style: TextStyle( fontSize: 12, color: Colors.blueGrey),),
                            Wrap(
                              // crossAxisAlignment: WrapCrossAlignment.center,

                              children: [
                                // CircleAvatar(
                                //   child: Icon(
                                //     Icons.currency_yen,
                                //     size: 10,
                                //   ),
                                //   radius: 10,
                                // ),
                                Text(shopPlan.plan_price.toString() + "円"),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      child: Text(
                                        shopPlan.main_category_title,
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.deepOrangeAccent),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  child: Text(
                                    shopPlan.sub_category_title,
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.green),
                                  ),
                                ),
                                //TODO
                              ],
                            ),
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
                          onTap: () async {
                            //プランに紐づく、オプションプランを取得する
                            await context
                                .read<ShopPlanNotifier>()
                                .getOptionPlanListByShopPlanId(shopPlan.id);
                            options =
                                context.read<ShopPlanState>().optionPlanList;

                            //show dialog
                            buildPlanFormDialog(
                                context,
                                shopPlan,
                                planNameController,
                                planPriceController,
                                planDetailController,
                                menu,
                                options);
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

            list.add(Text("件数:" + views.length.toString() + "件"));

            list.add(Center(child: Wrap(  spacing: 20, runSpacing: 20,  crossAxisAlignment: WrapCrossAlignment.center, children: views,)));

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
    List<DropdownMenuItem<int>> menu,
    List<OptionPlan> optionList,
  ) {
    return showDialog(
        context: context,
        builder: (_) {
          ///色々初期化
          String mode = shopPlan.id == 0 ? "new" : "edit";
          bool status = false;
          bool? optionChecked = false;
          if (mode == "edit") {
            status = shopPlan.status == 1 ? true : false;
          }
          int selectedValue = mode == "new" ? 0 : shopPlan.sub_category_id;
          planNameController.text = mode == "new" ? "" : shopPlan.plan_title;
          planPriceController.text =
              mode == "new" ? "" : shopPlan.plan_price.toString();
          planDetailController.text = mode == "new" ? "" : shopPlan.details;

          String title = "プラン登録";
          if (mode == "edit") {
            title = "プラン内容修正";
          }
          Map<int, bool> checkedList = {};
          optionList.forEach((element) {
            checkedList[element.id] = element.selected == 1 ? true : false;
          });

          return AlertDialog(
            title: Center(child: Text(title)),
            content: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
              var _setState = setState;
              List<CheckboxListTile> optionItems = optionList.map((e) {
                return CheckboxListTile(
                    title: Text(e.plan_title),
                    subtitle: Row(
                      children: [Text(e.plan_price.toString() + "円")],
                    ),
                    value: e.selected == 1 ? true : false,
                    onChanged: (value) {
                      print(value);
                      _setState(() {
                        int num = value == true ? 1 : 0;
                        e = e.copyWith(selected: num);
                      });
                    });
              }).toList();
              return Container(
                width: 600,
                child: SingleChildScrollView(
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
                          Text(
                            "④表示ステータス",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            child: SwitchListTile(
                                value: status,
                                // title: Text("表示ステータス"),
                                // secondary: status == 0
                                //     ? Icon(
                                //         Icons.visibility,
                                //       )
                                //     : Icon(Icons.visibility_off),
                                onChanged: (value) {
                                  //notifier側で管理
                                  // context.read<ShopPlanNotifier>().switchPlanStatus(value);
                                  _setState(() {
                                    status = value;
                                  });
                                }),
                          ),
                        ],
                      ),
                      Container(
                          width: double.infinity,
                          child: Text(
                            "⑤カテゴリ選択（メイン・サブ）",
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
                                isExpanded: true,
                                onChanged: (value) {
                                  _setState(() {
                                    selectedValue = int.parse(value.toString());
                                  });
                                },
                                value: selectedValue,
                                isDense: true,
                              )))),
                      Container(
                          width: double.infinity,
                          child: Text(
                            "⑥オプションプラン設定",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          )),
                      Container(
                        child: ListView(
                          shrinkWrap: true,
                          children: optionList.map((e) {
                            return CheckboxListTile(
                                title: Text(e.plan_title),
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
                      )
                    ],
                  ),
                ),
              );
            }),
            actions: [
              Center(
                  child: ElevatedButton(
                      onPressed: () async {
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
                        if (mode == "new") {
                          print(data);
                          print("register");
                          int newShopPlanId = await context
                              .read<ShopPlanNotifier>()
                              .registerShopPlan(data, Shop.me.id);

                          //オプション用checkedListをチェック -> option_planに反映
                          if (newShopPlanId > 0) {
                            Map<String, dynamic> map = {};
                            map['shop_id'] = Shop.me.id;
                            map['shop_plan_id'] = newShopPlanId;
                            map['checked_options'] = [];

                            List<int> selectedOptinId = [];
                            checkedList.forEach((optionId, isSelected) {
                              if (isSelected == true) {
                                selectedOptinId.add(optionId);
                              }
                            });
                            map['checked_options'] = selectedOptinId.join(",");
                            context
                                .read<ShopPlanNotifier>()
                                .updatePlanMatrix(map);
                          }
                        }
                        //修正
                        if (mode == "edit") {
                          print(data);
                          print("edit");
                          await context
                              .read<ShopPlanNotifier>()
                              .updateShopPlan(data, shopPlan.id);

                          //オプション用checkedListをチェック -> option_planに反映
                          Map<String, dynamic> map = {};
                          map['shop_id'] = Shop.me.id;
                          map['shop_plan_id'] = shopPlan.id;
                          map['checked_options'] = [];

                          List<int> selectedOptinId = [];
                          checkedList.forEach((optionId, isSelected) {
                            if (isSelected == true) {
                              selectedOptinId.add(optionId);
                            }
                          });
                          map['checked_options'] = selectedOptinId.join(",");
                          context
                              .read<ShopPlanNotifier>()
                              .updatePlanMatrix(map);
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
