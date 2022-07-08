import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/domain/notifiers/app_notifier.dart';
import 'package:mechadeli_flutter/screens/user_page/login/user_login.dart';
import 'package:provider/provider.dart';

import '../../admin_page/login/login.dart';

class UserAppBar extends StatelessWidget with PreferredSizeWidget {

  Size size;
  String title;

  UserAppBar({ required this.title, required this.size, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    AppBar(
      // automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.lightBlueAccent),
      actions: [
        CircleAvatar(
          child: Icon(Icons.home_outlined),
        ),
        if (size.width > 800)
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Center(
                  child: Text(
                    Shop.me.name,
                    style: TextStyle(color: Colors.white),
                  ))),
        InkWell(
          onTap: () {
            context.read<AppNotifier>().logoutUser();
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
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.black87,

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
