import 'package:flutter/material.dart';

class AppConstant {
  static const serviceName = 'MoneyBoard';
  // static const apiUrl ="http://money-board-api.amb-dev.com/com/user/test/index";
  // ローカル環境
  // static const apiUrl = "http://money-board-api.loc.com";
  // エミュレータ環境
  // static const apiUrl = "http://10.0.2.2:8080/Site/Amb/MoneyBoard-Api/public/";
  // 開発サーバ
  static const apiUrl = "http://mb-kdev-api.amb-dev.com";
  // static const apiUrl = "http://money-board-api.amb-dev.com";
  // static const apiUrl = "http://49.212.202.230/api";
  // static const apiUrl = "http://mb-kdev-api.amb-dev.com";
  // static const apiUrl = "http://49.212.202.230";
  static const int phoneMaxSize = 600;
  static const int tabletMaxSize = 800;
  static const int webMaxSize = 1500;

  //font
  static const Color fontColorAlert = Colors.redAccent;

  //buttons
  static const double buttonHeightHuge = 50.0; //button大2
  static const double buttonWidthHuge = 120.0; //button大2
  static const double buttonHeightBig = 40.0; //button大1
  static const double buttonHeightMiddle = 35.0; //button中
  static const double buttonHeightSmall = 28.0; //button小

  //app bar
  static const double appBarHeight = 40.0;

}

class AppConstantStyles {
  static const styleBoxShadow = BoxShadow(
    color: Colors.black26,
    blurRadius: 6,
    spreadRadius: 0.2,
    offset: Offset(0.5, 1),
  );
}
