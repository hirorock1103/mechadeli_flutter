import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/screens/shop_page/basic_information/basic_information.dart';
import 'package:mechadeli_flutter/screens/shop_page/dashboard/dashboard.dart';
import 'package:mechadeli_flutter/screens/shop_page/schedule/schedule.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print("build drawer");
    print(Shop.me);

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(child: Icon(Icons.person),),
                SizedBox(width: 10,),
                Text(Shop.me.name, style: TextStyle(color: Colors.white),),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            onTap: () {

              Navigator.of(context).push(MaterialPageRoute(builder: (_){ return DashBoard.wrapped(); }));
            },
            title: Text("ダッシュボード"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_){ return Schedule.wrapped(); }));
            },
            title: Text("予約"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("chat"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("よくある質問"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("お問い合わせ"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_){ return BasicInformation.wrapped(); }));
            },
            title: Text("基本情報"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("プロフィール設定"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("設定"),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ],
      ),
    );
  }
}
