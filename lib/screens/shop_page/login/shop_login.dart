import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/domain/entities/shop.dart';
import 'package:mechadeli_flutter/screens/shop_page/dashboard/dashboard.dart';
import 'package:mechadeli_flutter/screens/shop_page/shop_register/shop_register.dart';
import 'package:provider/provider.dart';

import '../../../domain/notifiers/app_notifier.dart';
import 'shop_login_notifier.dart';

class ShopLoginPage extends StatelessWidget {
  TextEditingController userIdController = TextEditingController();
  TextEditingController userPwController = TextEditingController();
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ShopLoginPageNotifier, ShopLoginPageState>(
          create: (context) => ShopLoginPageNotifier(
            context: context,
          ),
        )
      ],
      child: ShopLoginPage(),
    );
  }

   ShopLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    userIdController.text = "mdiz1103@gmail.com";
    userPwController.text = "11032189";

    final size = MediaQuery.of(context).size;
    final contentWidth = size.width / 1.5;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("login"),
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
              userInput(userIdController, "ID", TextInputType.text),
              userInput(userPwController, "password", TextInputType.text),
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
        "Mechadeli ショップ Login",
        style: TextStyle(fontSize: 30),
      ),
    );
  }

  ///userInput
  Widget signInButton() {
    return Builder(
      builder: (context) {
        String loginError = context.select((ShopLoginPageState state) => state).loginErrorMessage;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () async{
                  String email = userIdController.text;
                  String password = userPwController.text;
                  await context.read<ShopLoginPageNotifier>().login( email, password );
                  if(Shop.me.id > 0){
                    context.read<AppNotifier>().updateUserLoginStatus(UserLoginStatus.login);
                    Navigator.push(context, MaterialPageRoute(builder: (_){ return DashBoard.wrapped(); }));
                  }
                },
                child: Text(
                  "ログイン",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),

            if(loginError.isNotEmpty)
              Text("error"),

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
                InkWell( onTap: ( ){ Navigator.of(context).push(MaterialPageRoute(builder: (_){ return ShopRegister.wrapped(); }));  }, child: Text("新規shop登録")),
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
