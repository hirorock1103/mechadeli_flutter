import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import 'my_text_form.dart';

class MyTextEditWithTitle extends StatelessWidget {
  String hintText;
  String title;
  TextEditingController controller;

  MyTextEditWithTitle(
      {required this.hintText,
      required this.title,
      required this.controller,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          MyTextForm(
            hintText: hintText,
            controller: controller,
          )
        ],
      ),
    );
  }
}
