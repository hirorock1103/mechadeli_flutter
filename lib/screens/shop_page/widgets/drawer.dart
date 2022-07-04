import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/domain/entities/user.dart';
import 'package:mechadeli_flutter/screens/user_page/dashboard/dashboard.dart';
import 'package:mechadeli_flutter/screens/user_page/schedule/schedule.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print("build drawer");
    print(User.me);

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(child: Icon(Icons.person),),
                SizedBox(width: 10,),
                Text(User.me.last_name, style: TextStyle(color: Colors.white),),
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
