import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/sub_category.dart';
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
    //get data category list

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
    
    TextEditingController planNameController = TextEditingController();
    TextEditingController planPriceController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "ショッププラン管理"),
          Builder(
            builder: (context) {
              //カテゴリリストを作成する
              List<SubCategory> subCategoryList = context.select((ShopPlanState state) => state).subCategoryList;
              List<DropdownMenuItem<String>> menu = subCategoryList.map((e) { return DropdownMenuItem(child: Text(e.title + "("+ e.main_category_title +")"), value: e.id.toString(),); }).toList();
              return MyCard(
                contents: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Title(title: "登録プラン登録"),
                    InkWell(
                      onTap: (){
                        //what to do
                        //open dialog or move to other page
                        showDialog(context: context, builder: (_){

                          return AlertDialog(
                            title: Center(child: Text("プラン登録")),
                            content: Container(
                              width: 600,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyTextEditWithTitle(hintText: "", title: "①プランタイトル", controller: planNameController),
                                  MyTextEditWithTitle(hintText: "", title: "②金額", controller: planPriceController),
                                  MyTextEditWithTitle(hintText: "", title: "③詳細", controller: planNameController),
                                  Row(
                                    children: [
                                      Expanded( child: Text("⑤表示ステータス",style: TextStyle(fontWeight: FontWeight.bold),), flex: 2,),
                                      Expanded(child: SwitchListTile(value: true, onChanged: (value){ print(value); }), flex: 1,),
                                    ],
                                  ),
                                  Container(width: double.infinity, child: Text("⑥カテゴリ選択（メイン・サブ）",style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left,)),
                                  DropdownButton( items: menu, onChanged: (value){ print(value); },),
                                ],),
                            ),
                            actions: [
                              Center(child: ElevatedButton(onPressed: (){ print("register"); }, child: Text("登録"))),
                            ],
                          );
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(child: Icon(Icons.add, color: Colors.white,),backgroundColor: Colors.lightBlueAccent,),
                          SizedBox(width: 10,),
                          Text("新しいプランを登録する")
                        ],),
                    ),
                    Text("プラン登録方法", style: TextStyle(decoration:TextDecoration.underline),),
                    Text("Mechadeliウェブサイト上で表示されるプランを登録してください。", softWrap: true,),


                  ],
                ),
              );
            }
          ),
          Builder(
            builder: (context) {
              //テスト
              List<ShopPlanEntity.ShopPlan> shopPlanList = context.select((ShopPlanState state) => state).shopPlanList;

              List<Widget> list = [];
              list.add( H1Title(title: "登録プラン一覧") );
              shopPlanList.forEach((shopPlan) { list.add(
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(width: 1, color: Colors.teal)
                  ),
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
                            Text( shopPlan.plan_price.toString() + "円"),
                            SizedBox(width: 10,),
                            Container(
                              child: Text(
                                shopPlan.main_category_title,
                                style: TextStyle( fontSize: 11, color: Colors.white),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.teal),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              child: Text(
                                shopPlan.sub_category_title,
                                style: TextStyle(fontSize: 11,color: Colors.white),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepOrangeAccent),
                            ),
                          ],
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(shopPlan.plan_title),
                        ],
                      ),
                      trailing: Icon(Icons.edit),
                    ),
                  ),
                )
              ); });



              return MyCard(
                contents: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: list,
                ),
              );
            }
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
