import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "プロフィール設定"),
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
