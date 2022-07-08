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
import '../../../domain/entities/option_plan.dart' as OptionPlanEntity;
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'option_plan_notifier.dart';

class OptionPlan extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<OptionPlanNotifier, OptionPlanState>(
          create: (context) => OptionPlanNotifier(
            context: context,
          ),
        )
      ],
      child: OptionPlan(),
    );
  }

  const OptionPlan({Key? key}) : super(key: key);

//   @override
//   _OptionPlanState createState() => _OptionPlanState();
// }
//
// class _OptionPlanState extends State<OptionPlan> {
  @override
  Widget build(BuildContext context) {
    //get data
    context.read<OptionPlanNotifier>().getOptionPlanList();

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
        crossAxisAlignment: CrossAxisAlignment.start,//navigation,main contents上部設定
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
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          PageTitle(title: "オプションプラン管理"),
          Builder(builder: (context) {

            return Builder(builder: (context) {
              // bool status = context.select((OptionPlanState state) => state).planDisplayStatus;
              // print(status);
              return MyCard(
                contents: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Title(title: "オプションプラン登録"),
                    InkWell(
                      onTap: () {
                        //what to do
                        //open dialog or move to other page
                        buildPlanFormDialog(context, OptionPlanEntity.OptionPlan(), planNameController,
                            planPriceController, planDetailController);
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
                      "オプションプラン登録方法",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                    Text(
                      "Mechadeliウェブサイト上で表示されるオプションプランを登録してください。",
                      softWrap: true,
                    ),
                    Text(
                      "オプションプランはショッププラン選択時に表示されます。",
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
            //テスト
            List<OptionPlanEntity.OptionPlan> optionPlanList =
                context.select((OptionPlanState state) => state).optionPlanList;

            List<Widget> list = [];
            list.add(H1Title(title: "登録プラン一覧"));
            optionPlanList.forEach((optionPlan) {
              list.add(InkWell(
                onTap: () {
                  //show dialog
                  print(optionPlan.plan_title);
                },
                child: Card(
                  elevation: 5,
                  color: optionPlan.status == 0
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
                            Text(optionPlan.plan_price.toString() + "円"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(optionPlan.created_at),
                          ],
                        ),
                      ),
                      title: Row(
                        children: [
                          Text(
                            optionPlan.plan_title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      trailing: InkWell(
                          onTap: () {
                            print("icon tap");
                            buildPlanFormDialog(context, optionPlan, planNameController, planPriceController, planDetailController);
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
      OptionPlanEntity.OptionPlan optionPlan,
      TextEditingController planNameController,
      TextEditingController planPriceController,
      TextEditingController planDetailController,
      ) {
    return showDialog(
        context: context,
        builder: (_) {
          ///色々初期化
          String mode = optionPlan.id == 0 ? "new" : "edit";
          bool status = false;
          if(mode == "edit"){
            status = optionPlan.status == 1 ? true : false;
          }
          planNameController.text =mode == "new"  ?  "" : optionPlan.plan_title;
          planPriceController.text =mode == "new"  ?  "" : optionPlan.plan_price.toString();
          planDetailController.text =mode == "new"  ?  "" : optionPlan.details;

          String title = "オプションプラン登録";
          if(mode == "edit"){
             title = "オプションプラン内容修正";
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
                                // context.read<OptionPlanNotifier>().switchPlanStatus(value);
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
                  ],
                ),
              );
            }),
            actions: [
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        print("========");
                        print(status);
                        print("========");

                        Map<String, dynamic> data = {};
                        data['plan_title'] = planNameController.text;
                        data['plan_price'] = planPriceController.text;
                        data['details'] = planDetailController.text;
                        data['status'] = status;
                        data['shop_id'] = Shop.me.id;

                        //登録
                        if(mode == "new"){
                          print(data);
                          print("register");
                          context
                              .read<OptionPlanNotifier>()
                              .registerOptionPlan(data, Shop.me.id);
                        }
                        //修正
                        if(mode == "edit"){
                          print(data);
                          print("edit");
                          context
                              .read<OptionPlanNotifier>()
                              .updateOptionPlan(data, optionPlan.id);
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
