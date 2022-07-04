import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/screens/admin_page/login/login.dart';
import 'package:mechadeli_flutter/screens/home_page/home_page.dart';
import 'package:mechadeli_flutter/screens/shop_page/login/shop_login.dart';
import 'package:mechadeli_flutter/screens/shop_page/shop_home_page.dart';
import 'package:mechadeli_flutter/screens/user_page/login/user_login.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return HomePage(title: "homepage");
                    }));
                  },
                  child: Text("Home")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return UserLoginPage.wrapped();
                    }));
                  },
                  child: Text("User")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return ShopLoginPage.wrapped();
                    }));
                  },
                  child: Text("Shop")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                      return LoginPage.wrapped();
                    }));
                  },
                  child: Text("Admin")),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
