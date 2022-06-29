import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/user_page/login/login.dart';
import 'package:mechadeli_flutter/screens/user_page/chat/chat.dart';
import 'package:mechadeli_flutter/screens/user_page/inquiry/inquiry.dart';
import 'package:mechadeli_flutter/screens/user_page/profile/profile.dart';
import 'package:mechadeli_flutter/screens/user_page/setting/setting.dart';

import 'dashboard/dashboard.dart';
import 'questions/question.dart';
import 'schedule/schedule.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      drawer: size.width < AppConstant.phoneMaxSize ? Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("ダッシュボード"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("予約"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("chat"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("よくある質問"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("お問い合わせ"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("プロフィール設定"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              title: Text("設定"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ) : null,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          CircleAvatar(
            child: Icon(Icons.person_add),
          ),
          if (size.width > 800)
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Center(
                    child: Text(
                  "Test テスト　様",
                  style: TextStyle(color: Colors.black54),
                ))),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return LoginPage.wrapped();
              }));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.fromLTRB(21, 0, 0, 0),
                color: Colors.black54,
                height: double.infinity,
                child: Center(
                    child: Text(
                  "ログアウト",
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ],
        title: InkWell(
          onTap: () {
            // dashboardKey.currentState.initialize();
          },
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.black54),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          size.width > AppConstant.tabletMaxSize ? Container(child: Text("test"),width: 200,) : Container()t ,
          Expanded(
            child: DashBoard.wrapped(),
          ),
        ],
      ),
    );
  }
}
