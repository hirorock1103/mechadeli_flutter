import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/forms/my_text_form.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h2_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

import '../../../common/constants.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);

  @override
  _BasicInformationState createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
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
              buildRow("店舗コード", ""),
              buildRow("店舗名", ""),
              buildRow("店舗名（カナ）", ""),
              buildRow("店長名", ""),
              buildRow("住所（郵便番号）", ""),
              buildRow("住所（都道府県）", ""),
              buildRow("住所（市区町村）", ""),
              buildRow("住所（町名・番地）", ""),
              buildRow("住所（ビル名・部屋番号）", ""),
              buildRow("電話番号", ""),
              ElevatedButton(
                  onPressed: () {
                    print("tet");
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
              buildRow("キャッチコピー", ""),
              buildRow("営業時間", ""),
              buildRow("定休日", ""),
              buildRow("店舗概要", ""),
              ElevatedButton(
                  onPressed: () {
                    print("tet");
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
                  buildRow("運転免許", ""),
                  buildRow("整備士免許", ""),
                  buildRow("古物商許可証番号", ""),
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

  Widget buildRow(String title, String hintText) {
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
                  ))
            ],
          ),
        );
      }
    });
  }
}
