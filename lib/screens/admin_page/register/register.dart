import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/admin_page/admin_home_page.dart';
import 'package:provider/provider.dart';

import '../../../domain/notifiers/app_notifier.dart';
import 'register_notifier.dart';

class Register extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<RegisterNotifier, RegisterState>(
          create: (context) => RegisterNotifier(
            context: context,
          ),
        )
      ],
      child: Register(),
    );
  }

  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userIdController = TextEditingController();
    TextEditingController userPwController = TextEditingController();
    TextEditingController userNameController = TextEditingController();

    final size = MediaQuery.of(context).size;
    final contentWidth = size.width / 1.5;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("register"),
      // ),
      body: Center(
        child: Container(
          width: contentWidth <= (AppConstant.tabletMaxSize as double)
              ? contentWidth
              : AppConstant.tabletMaxSize as double,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 1,),
              title(),
              SizedBox(
                height: 30,
              ),
              userInput(userIdController, "ID(メールアドレス)", TextInputType.text),
              userInput(userPwController, "password(8文字以上)", TextInputType.text),
              userInput(userNameController, "お名前", TextInputType.text),
              const SizedBox(
                height: 20,
              ),
              signInButton(),
              Spacer(flex: 1,),
              InkWell( onTap: (){ print("test"); } , child: Text("利用規約")),
              InkWell( onTap: (){ print("test"); } , child: Text("プライバシーポリシー")),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///title
  Widget title() {
    return Container(
      child: Text(
        "新規管理ユーザー登録",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  ///userInput
  Widget signInButton() {
    return Builder(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (_){ return main(); }));
                  Navigator.push(context, MaterialPageRoute(builder: (_){ return AdminHomePage(title: "Admin管理画面",); }));
                },
                child: Text(
                  "管理者登録",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 10,
                  child: ClipOval(child: Icon(Icons.arrow_forward, size: 12,)),
                ),
                SizedBox(width: 10,),
                InkWell( onTap: (){print("test");}, child: Text("パスワードを忘れた方")),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 10,
                  child: ClipOval(child: Icon(Icons.arrow_forward, size: 12,)),
                ),
                SizedBox(width: 10,),
                InkWell( onTap: (){print("test");}, child: Text("新規ユーザー登録")),
              ],
            )
          ],
        );
      }
    );
  }

  ///input id
  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType) {
    return Builder(builder: (context) {
      return Container(
        height: 55,
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.blueGrey[100],
            borderRadius: BorderRadius.circular(30)),
        child: TextField(
          controller: userInput,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration(
            hintText: hintTitle,
            contentPadding: EdgeInsets.all(20),
            border: InputBorder.none,
          ),
          keyboardType: keyboardType,
        ),
      );
    });
  }
}
