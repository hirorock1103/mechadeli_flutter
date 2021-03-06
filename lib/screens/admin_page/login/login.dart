import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/constants.dart';
import 'package:mechadeli_flutter/main.dart';
import 'package:mechadeli_flutter/screens/admin_page/register/register.dart';
import 'package:mechadeli_flutter/screens/user_page/dashboard/dashboard.dart';
import 'package:mechadeli_flutter/screens/admin_page/admin_home_page.dart';
import 'package:provider/provider.dart';

import '../../../domain/notifiers/app_notifier.dart';
import 'login_notifier.dart';

class LoginPage extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<LoginPageNotifier, LoginPageState>(
          create: (context) => LoginPageNotifier(
            context: context,
          ),
        )
      ],
      child: LoginPage(),
    );
  }

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController userIdController = TextEditingController();
    TextEditingController userPwController = TextEditingController();

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
              InkWell( onTap: (){ print("test"); } , child: Text("????????????")),
              InkWell( onTap: (){ print("test"); } , child: Text("??????????????????????????????")),
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
        "Mechadeli Admin Login",
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
                  Navigator.push(context, MaterialPageRoute(builder: (_){ return AdminHomePage(title: "Admin????????????",); }));
                },
                child: Text(
                  "????????????",
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
                InkWell( onTap: (){print("test");}, child: Text("??????????????????????????????")),
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
                InkWell( onTap: ( ){ Navigator.of(context).push(MaterialPageRoute(builder: (_){ return Register.wrapped(); }));  }, child: Text("????????????????????????")),
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
