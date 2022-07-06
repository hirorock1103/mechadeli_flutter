import 'package:flutter/material.dart';

class SideNavgation2 extends StatelessWidget {
  const SideNavgation2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .2 ,
      child: Text("side",), color: Colors.lightGreen.shade100,);
  }
}
