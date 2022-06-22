import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/login/login.dart';
import 'package:mechadeli_flutter/screens/chat/chat.dart';
import 'package:mechadeli_flutter/screens/inquiry/inquiry.dart';
import 'package:mechadeli_flutter/screens/profile/profile.dart';
import 'package:mechadeli_flutter/screens/setting/setting.dart';

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
  SideMenuDisplayMode displayMode = SideMenuDisplayMode.auto;
  PageController page = PageController();

  @override
  Widget build(BuildContext context) {
    final dashboardKey = GlobalKey(); //TODO stateless用のkey設定が必要
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
                page.jumpToPage(0);
                Navigator.pop(context);
              },
              title: Text("ダッシュボード"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(1);
                Navigator.pop(context);
              },
              title: Text("予約"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(2);
                Navigator.pop(context);
              },
              title: Text("chat"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(3);
                Navigator.pop(context);
              },
              title: Text("よくある質問"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(4);
                Navigator.pop(context);
              },
              title: Text("お問い合わせ"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(5);
                Navigator.pop(context);
              },
              title: Text("プロフィール設定"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            ListTile(
              onTap: (){
                page.jumpToPage(6);
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
            page.jumpToPage(0);
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
          SideMenu(
            showToggle: true,
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              backgroundColor: Colors.white,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1.0,
                  blurRadius: 10.0,
                  offset: Offset(0, 5),
                ),
              ]),
              displayMode: displayMode,
              hoverColor: AppColors.primary[50],
              selectedColor: AppColors.primary,
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              openSideMenuWidth: 200,

              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            // title: Column(
            //   children: [
            //     ConstrainedBox(
            //       constraints: const BoxConstraints(
            //         maxHeight: 150,
            //         maxWidth: 150,
            //       ),
            //       child: Image.asset(
            //         'assets/images/1.png',
            //       ),
            //     ),
            //     const Divider(
            //       indent: 8.0,
            //       endIndent: 8.0,
            //     ),
            //   ],
            // ),
            title: Container(
              height: 10,
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'mechadeli',
                style: TextStyle(fontSize: 15),
              ),
            ),
            items: [
              SideMenuItem(
                priority: 0,
                title: 'Dashboard',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SideMenuItem(
                priority: 1,
                title: '予約',
                onTap: () {
                  page.jumpToPage(1);
                },
                icon: const Icon(Icons.event_available),
              ),
              SideMenuItem(
                priority: 2,
                title: 'Chat',
                onTap: () {
                  print("chat");
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.chat),
              ),
              SideMenuItem(
                priority: 3,
                title: 'よくあるご質問',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.question_answer),
              ),
              SideMenuItem(
                priority: 5,
                title: 'プロフィール設定',
                onTap: () {
                  page.jumpToPage(5);
                },
                icon: const Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 4,
                title: 'お問い合わせ',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.contact_support),
              ),
              SideMenuItem(
                priority: 6,
                title: 'Settings',
                onTap: () {
                  page.jumpToPage(6);
                },
                icon: const Icon(Icons.settings),
              ),
              SideMenuItem(
                priority: 8,
                title: 'Exit',
                onTap: () async {},
                icon: const Icon(Icons.exit_to_app),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                DashBoard.wrapped(dashboardKey), //ダッシュボード
                Schedule.wrapped(), //予約
                Chat(), //チャット
                Question(), //よくある質問
                Inquiry.wrapped(), //お問い合わせ
                Profile(), //プロフィール設定
                Setting(), //設定
              ],
            ),
          ),
        ],
      ),
    );
  }
}
