import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/screens/home_page/home_page.dart';
import 'package:mechadeli_flutter/screens/start.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'di_container.dart';
// import 'screens/user_page/my_home_page.dart';

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
        primarySwatch: AppColors.primary ,
        textTheme: GoogleFonts.sawarabiGothicTextTheme(
          Theme.of(context).textTheme
        )
      ),
      // home: const MyHomePage(title: 'Mechadeli MyPage(User)'),
      // home: const LoginPage(),
      home: const Start(),
      // home: const HomePage(title: "Mechadeli HomePage"),
      debugShowCheckedModeBanner: false,
    );
  }
}
