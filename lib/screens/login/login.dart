import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
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

    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Center(
        child: Container(
          width: (size.width / 1.5) as double,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              userInput(userIdController, "ID", TextInputType.text),
              userInput(userPwController, "password", TextInputType.text),
            ],
          ),
        ),
      ),
    );
  }

  ///userInput
  Widget signIn(){
    return Container(
      child: ElevatedButton(
        onPressed: (){ print("test"); },
        child: Text("test"),
      ),
    );
  }

  ///input id
  Widget userInput( TextEditingController userInput ,String hintTitle, TextInputType keyboardType) {
    return Builder(builder: (context) {
      return Container(
        height: 55,
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade200,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 15, right: 25),
          child: TextField(
            controller: userInput,
            autocorrect: false,
            enableSuggestions: false,
            autofocus: false,
            decoration: InputDecoration.collapsed(
              hintText: hintTitle,
              hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  fontStyle: FontStyle.italic),
            ),
            keyboardType: keyboardType,
          ),
        ),
      );
    });
  }

}
