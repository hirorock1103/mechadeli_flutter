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

import '../widgets/side_navi2.dart';
import 'basic_information_notifier.dart';

class BasicInformation extends StatelessWidget {

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<BasicInformationNotifier, BasicInformationState>(
          create: (context) => BasicInformationNotifier(
            context: context,
          ),
        )
      ],
      child: BasicInformation(),
    );
  }
  const BasicInformation({Key? key}) : super(key: key);
//   @override
//   _BasicInformationState createState() => _BasicInformationState();
// }
//
// class _BasicInformationState extends State<BasicInformation> {
  @override
  Widget build(BuildContext context) {

    //set data


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
    shopFormat.toJson().entries.forEach((e) { editMap[e.key] = TextEditingController(); });
    Shop shop = Shop.me;
    shop.toJson().entries.forEach((e) { editMap[e.key]?.text = e.value.toString(); });


    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "基本情報"),
          MyCard(
              contents: Column(
            children: [
              H1Title(
                title: "店舗基本情報",
              ),
              buildRow("店舗コード", "", editMap['shop_code']!),
              buildRow("店舗名", "", editMap['name']!),
              buildRow("店舗オーナー名", "", editMap['shop_owner_name']!),
              buildRow("住所（郵便番号）", "", editMap['shop_address_post_number']!),
              buildRow("住所（都道府県）", "", editMap['shop_address_pref']!),
              buildRow("住所（市区町村）", "", editMap['shop_address_city']!),
              buildRow("住所（番地）", "", editMap['shop_address_town']!),
              buildRow("住所（建物名）", "", editMap['shop_address_buildings']!),
              // buildRow("電話番号", ""),
              ElevatedButton(
                  onPressed: () async{
                    Map<String, dynamic> data = {};
                    data["shop_code"] = editMap['shop_code']!.text;
                    data["name"] = editMap['name']!.text;
                    data["shop_owner_name"] = editMap['shop_owner_name']!.text;
                    data["shop_address_post_number"] = editMap['shop_address_post_number']!.text;
                    data["shop_address_pref"] = editMap['shop_address_pref']!.text;
                    data["shop_address_city"] = editMap['shop_address_city']!.text;
                    data["shop_address_town"] = editMap['shop_address_town']!.text;
                    data["shop_address_buildings"] = editMap['shop_address_buildings']!.text;
                    int shopId = Shop.me.id;
                    context.read<BasicInformationNotifier>().updateShop(data, shopId);

                  },
                  child: Text("店舗基本情報の更新"))
            ],
          )),
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
                    context.read<BasicInformationNotifier>().updateShop(data, shopId);
                  },
                  child: Text("店舗営業情報の更新"))
            ],
          )),
          Builder(builder: (context) {

            // Map<String, dynamic> areaMap = {};
            // areaMap['京都'] = ["右京区", "左京区", "ああああ","右京区", "左京区", "ああああ","右京区", "左京区", "ああああ"];
            // areaMap['奈良'] = ["ああああ","右京区", "左京区", "ああああ"];
            //
            // List<Widget> areasWidget = areaMap.entries.map((e) => Container(child: Text(e.value),)  ).toList();

            List<String> areaMap = ["ああああ","右京区", "左京区"];

            List<Widget> areasWidget = areaMap.map((e) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(color: Colors.grey),
                child: Text(e, style: TextStyle(color: Colors.white),),
              );
            }).toList();
            return MyCard(
                contents: Column(
              children: [
                H1Title(
                  title: "対応エリア",
                ),
                H2Title(
                  title: "大阪",
                ),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    children: areasWidget,
                  ),
                ),
                SizedBox(height: 20,),
                H2Title(
                  title: "京都府",
                ),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    children: areasWidget,
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: () {
                      print("tet");
                    },
                    child: Text("対応エリアの編集"))
              ],
            ));
          }),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "資格・許認可",
                  ),
                  // buildRow("運転免許", ""),
                  // buildRow("整備士免許", ""),
                  // buildRow("古物商許可証番号", ""),
                  ElevatedButton(
                      onPressed: () {
                        print("tet");
                      },
                      child: Text("資格・許認可の更新"))
                ],
              )),
        ],
      ),
    );
  }

  Widget buildRow(String title, String hintText, TextEditingController controller) {
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
