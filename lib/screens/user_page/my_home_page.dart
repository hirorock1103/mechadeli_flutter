import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/user_page/widgets/app_bar.dart';
import 'package:mechadeli_flutter/screens/user_page/widgets/drawer.dart';
import 'package:mechadeli_flutter/screens/user_page/widgets/side_navi.dart';

import 'dashboard/dashboard.dart';

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
      drawer: size.width < AppConstant.phoneMaxSize ? UserDrawer() : null,
      appBar: UserAppBar( title: widget.title, size: size, ) ,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          size.width > AppConstant.tabletMaxSize ? Container(child: Text("test"),width: 200,) : SideNavgation(),
          Expanded(
            child: DashBoard.wrapped(),
          ),
        ],
      ),
    );
  }
}
