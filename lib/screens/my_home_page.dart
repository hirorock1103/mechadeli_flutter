import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/inquiry/inquiry.dart';

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
    final Size size = MediaQuery.of(context).size;
    print(size.width);
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () {
                setState(() {
                  if( size.width > AppConstant.phoneMaxSize ){
                    //tablet以上
                    displayMode = (displayMode == SideMenuDisplayMode.compact) ? SideMenuDisplayMode.auto : SideMenuDisplayMode.compact;

                  }else{
                    //スマホ
                    displayMode = SideMenuDisplayMode.auto;
                  }
                });
              },
              child: CircleAvatar(
                child: Icon(Icons.person_add),
              )),
          if(size.width > 800)
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Center(
                    child: Text(
                      "Test テスト　様",
                      style: TextStyle(color: Colors.black54),
                    ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(21, 0, 0, 0),
              color: Colors.black54,
              height: double.infinity,
              child: Center(
                  child: Text(
                "ログアウト",
                style: TextStyle(color: Colors.white),
              ))),
        ],
        title: InkWell(
          onTap: () => page.jumpToPage(0),
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
            controller: page,
            // onDisplayModeChanged: (mode) {
            //   print(mode);
            // },
            style: SideMenuStyle(
              backgroundColor: Colors.white,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 1.0,
                    blurRadius: 10.0,
                    offset: Offset(0, 5),
                  ),
                ]
              ),
              displayMode: displayMode,
              hoverColor: Colors.blue[100],
              selectedColor: Colors.lightBlueAccent,
              selectedTitleTextStyle: const TextStyle(color: Colors.white),
              selectedIconColor: Colors.white,
              openSideMenuWidth: 200,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              // backgroundColor: Colors.blueGrey[700]
            ),
            title: Column(
              children: [
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ),
                  child: Image.asset(
                    'assets/images/1.png',
                  ),
                ),
                const Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),
              ],
            ),
            footer: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'mohada',
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
                priority: 1,
                title: 'Chat',
                onTap: () {
                  page.jumpToPage(1);
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
                priority: 3,
                title: 'プロフィール設定',
                onTap: () {
                  page.jumpToPage(3);
                },
                icon: const Icon(Icons.supervisor_account),
              ),
              SideMenuItem(
                priority: 2,
                title: 'お問い合わせ',
                onTap: () {
                  page.jumpToPage(2);
                },
                icon: const Icon(Icons.contact_support),
              ),
              SideMenuItem(
                priority: 4,
                title: 'Settings',
                onTap: () {
                  page.jumpToPage(4);
                },
                icon: const Icon(Icons.settings),
              ),
              SideMenuItem(
                priority: 6,
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
                DashBoard.wrapped(),
                Schedule.wrapped(),
                Inquiry.wrapped(),
                Question(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
