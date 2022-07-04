import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/shop_page/top/home_page_top.dart';
import 'package:mechadeli_flutter/screens/user_page/login/user_login.dart';

// import 'dashboard/dashboard.dart';

class ShopHomePage extends StatefulWidget {
  const ShopHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ShopHomePageState createState() => _ShopHomePageState();
}

class _ShopHomePageState extends State<ShopHomePage> {
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
                return UserLoginPage.wrapped();
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
          Expanded(
            child: HomePageTop.wrapped(),
          ),
        ],
      ),
    );
  }
}
