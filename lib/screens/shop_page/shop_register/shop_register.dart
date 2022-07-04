import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/screens/admin_page/admin_home_page.dart';
import 'package:provider/provider.dart';

import '../../../domain/notifiers/app_notifier.dart';
import 'shop_register_notifier.dart';

class ShopRegister extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<ShopRegisterNotifier, ShopRegisterState>(
          create: (context) => ShopRegisterNotifier(
            context: context,
          ),
        )
      ],
      child: ShopRegister(),
    );
  }

  const ShopRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userIdController = TextEditingController();
    TextEditingController userPwController = TextEditingController();
    TextEditingController userPwConfirmController = TextEditingController();
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
              userInput(userIdController, "ID(メールアドレス)", TextInputType.text, (value){ context.read<ShopRegisterNotifier>().updateId(value); }),
              userInput(userPwController, "password(8文字以上)", TextInputType.text ,(value){ context.read<ShopRegisterNotifier>().updatePw(value); }),
              userInput(userPwConfirmController, "password(確認用)", TextInputType.text, (value){ context.read<ShopRegisterNotifier>().updatePwConfirm(value); }),
              userInput(userNameController, "お名前", TextInputType.text ,(value){ context.read<ShopRegisterNotifier>().updateName(value); }),
              const SizedBox(
                height: 20,
              ),
              signInButton( ),
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
        "新規ショップ登録",
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
                  context.read<ShopRegisterNotifier>().registerUser();

                  // Navigator.push(context, MaterialPageRoute(builder: (_){ return AdminHomePage(title: "Admin管理画面",); }));
                },
                child: Text(
                  "ショップ登録",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),

          ],
        );
      }
    );
  }

  ///input id
  Widget userInput(TextEditingController userInput, String hintTitle,
      TextInputType keyboardType, ValueChanged onChanged ) {


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
          onChanged: onChanged,
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
