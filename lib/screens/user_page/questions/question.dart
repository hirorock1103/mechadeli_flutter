import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

class Question extends StatefulWidget {
  const Question({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "よくあるご質問"),
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
