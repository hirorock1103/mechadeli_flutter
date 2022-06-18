import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class BlockCard extends StatelessWidget {

  String title;
  BlockCard({ required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.titleBackground,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide( color: Colors.grey, width: 1 )),
      ),
      padding: EdgeInsets.all(10),
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
