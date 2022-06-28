import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/screens/user_page/chat/room.dart';

import '../../../common/colors.dart';

class MyChatCard extends StatelessWidget {
  String shopName;
  String shopImagePath;
  String message;
  String date;

  MyChatCard(
      {required this.shopName,
      required this.message,
      required this.date,
      required this.shopImagePath,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 10,
      child: Stack(
        children: [
          Positioned( right: 10, top: 5, child: Container(child: Text( date, style: TextStyle(fontSize: 12),),)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: Row(
              children: [
                CircleAvatar(
                  child: ClipOval(child: Image.asset(shopImagePath)),
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shopName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      message,
                    ),
                  ],
                ),
                Spacer(flex: 1,),
                IconButton(
                    onPressed: () {
                      print("push");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage() ));
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
