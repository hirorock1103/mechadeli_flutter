import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class PageTitle extends StatelessWidget {

  String title;
  PageTitle({ required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.titleBackground,
      decoration: BoxDecoration(
        color: AppColors.titleBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(8,0),
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Icon(Icons.list),
          Text(title, style: TextStyle( fontWeight: FontWeight.bold ),),
        ],
      ),
    );
  }
}
