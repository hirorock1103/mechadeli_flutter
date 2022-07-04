import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/app_bar.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/drawer.dart';
import 'package:mechadeli_flutter/screens/shop_page/widgets/side_navi.dart';

import 'dashboard/dashboard.dart';

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
