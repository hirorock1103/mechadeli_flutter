import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'di_container.dart';
import 'screens/my_home_page.dart';

void main() async{
  runApp( MultiProvider(providers: await providers, child: MyApp(),) );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mechadeli',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,

      ),
      home: const MyHomePage(title: 'Mechadeli MyPage(User)'),
      debugShowCheckedModeBanner: false,
    );
  }
}
