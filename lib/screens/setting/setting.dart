import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "設定"),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "お支払いはどうすればいいでしょうか？",
                  ),
                  Container(child: Text("テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),)
                ],
              )),
          MyCard(
              contents: Column(
                children: [
                  H1Title(
                    title: "お支払いはどうすればいいでしょうか？",
                  ),
                  Container(child: Text("テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),)
                ],
              )),
          MyCard(
              contents: Column(
            children: [
              H1Title(
                title: "お支払いはどうすればいいでしょうか？",
              ),
              Container(child: Text("テストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテストテスト"),)
            ],
          )),
        ],
      ),
    );
  }
}
