import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/widgets/common/layout/my_card.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(title: "chat"),
          MyCard(
              contents: Stack(
                children: [
                  Row(
                    children: [
                      CircleAvatar( child: ClipOval(child: Image.asset("assets/images/1.png")), radius: 30,),
                      SizedBox( width: 10, ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: Text("たけおショップ" , style: TextStyle(fontWeight: FontWeight.bold),),),
                          Container(child: Text("こんにちは！予約ありがとうございますtestetataeatataetateet"),),
                        ],),
                      Spacer(flex: 1,),
                      Column(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      // IconButton(onPressed: (){  }, icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  Positioned( right: 0, top: 0, child: Container(child: Text("today", style: TextStyle(fontSize: 12),),)),
                ],
              )),
          MyCard(
              contents: Stack(
                children: [
                  Row(
                    children: [
                      CircleAvatar( child: ClipOval(child: Image.asset("assets/images/1.png")), radius: 30,),
                      SizedBox( width: 10, ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: Text("たけおショップ" , style: TextStyle(fontWeight: FontWeight.bold),),),
                          Container(child: Text("こんにちは！予約ありがとうございますtestetataeatataetateet"),),
                        ],),
                      Spacer(flex: 1,),
                      Column(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      // IconButton(onPressed: (){  }, icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  Positioned( right: 0, top: 0, child: Container(child: Text("today", style: TextStyle(fontSize: 12),),)),
                ],
              )),
          MyCard(
              contents: Stack(
                children: [
                  Row(
                    children: [
                      CircleAvatar( child: ClipOval(child: Image.asset("assets/images/1.png")), radius: 30,),
                      SizedBox( width: 10, ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: Text("たけおショップ" , style: TextStyle(fontWeight: FontWeight.bold),),),
                          Container(child: Text("こんにちは！予約ありがとうございますtestetataeatataetateet"),),
                        ],),
                      Spacer(flex: 1,),
                      Column(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      // IconButton(onPressed: (){  }, icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  Positioned( right: 0, top: 0, child: Container(child: Text("today", style: TextStyle(fontSize: 12),),)),
                ],
              )),
          MyCard(
              contents: Stack(
                children: [
                  Row(
                    children: [
                      CircleAvatar( child: ClipOval(child: Image.asset("assets/images/1.png")), radius: 30,),
                      SizedBox( width: 10, ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(child: Text("たけおショップ" , style: TextStyle(fontWeight: FontWeight.bold),),),
                          Container(child: Text("こんにちは！予約ありがとうございますtestetataeatataetateet"),),
                        ],),
                      Spacer(flex: 1,),
                      Column(
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      // IconButton(onPressed: (){  }, icon: Icon(Icons.arrow_forward_ios_rounded))
                    ],
                  ),
                  Positioned( right: 0, top: 0, child: Container(child: Text("today", style: TextStyle(fontSize: 12),),)),
                ],
              )),
        ],
      ),
    );
  }
}
