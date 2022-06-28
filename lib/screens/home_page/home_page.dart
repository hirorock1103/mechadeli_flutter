import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/home_page/top/home_page_top.dart';
import 'package:mechadeli_flutter/screens/user_page/login/login.dart';

// import 'dashboard/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SideMenuDisplayMode displayMode = SideMenuDisplayMode.auto;
  PageController page = PageController();

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
                page.jumpToPage(0);
                Navigator.pop(context);
              },
              title: Text("ダッシュボード"),
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

            ),
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
                title: 'top',
                onTap: () {
                  page.jumpToPage(0);
                },
                icon: const Icon(Icons.home),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: page,
              children: [
                HomePageTop.wrapped(), //ダッシュボード
              ],
            ),
          ),
        ],
      ),
    );
  }
}
