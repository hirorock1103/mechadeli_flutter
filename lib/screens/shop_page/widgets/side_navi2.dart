import 'package:flutter/material.dart';

class SideNavgation2 extends StatelessWidget {
  SideNavgation2({Key? key}) : super(key: key);
  Map<String, dynamic> list = {};

  @override
  Widget build(BuildContext context) {
    list['page1'] = "page";
    list['page2'] = "page";
    list['page3'] = "page";
    list['page4'] = "page";
    list['page5'] = "page";


    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 1),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "page1",
              )),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 1),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "page1",
              )),
        ],
      ),
      color: Colors.lightGreen.shade100,
    );
  }
}
