import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class MyCard extends StatelessWidget {

  Widget contents;
  MyCard({ required this.contents, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Card(
          margin: EdgeInsets.all(20),
          elevation: 10,
          child: Container( padding: EdgeInsets.all(20), child: contents) ,
        );
  }
}
