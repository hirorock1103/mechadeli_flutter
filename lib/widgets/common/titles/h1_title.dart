import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class H1Title extends StatelessWidget {

  String title;
  H1Title({ required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.titleBackground,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border(bottom: BorderSide( color: Colors.grey, width: 3 )),
        gradient: LinearGradient(begin: Alignment.bottomLeft , end: Alignment.bottomRight, colors: [ Colors.blueAccent, Colors.lightBlueAccent.shade100 ]),
      ),
      padding: EdgeInsets.only( bottom: 3),
      child: Container(
        padding: EdgeInsets.only(bottom: 10,left: 5),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon(Icons.list),
            Text(title, style: TextStyle( fontWeight: FontWeight.bold ),),
          ],
        ),
      ),
    );
  }
}
