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
  static const double imageSize = 512;
  static const double sideWidthRate = 0.250;
  static const double pageBaseContainerRate = 0.9;
  static const double appBarTextSizeRate = 0.015;
  static const double paddingMainContents = 15.0;
  static const double boxRadius = 5.0;
  //buttons
  static const double buttonHeightHuge = 50.0; //button大2
  static const double buttonWidthHuge = 120.0; //button大2
  static const double buttonHeightBig = 40.0; //button大1
  static const double buttonHeightMiddle = 35.0; //button中
  static const double buttonHeightSmall = 28.0; //button小
  //card
  static const double cardWidthDefault = 300;
  //padding
  static const double loginPageScreenPadding = 130;
  static const double appBarHeight = 40.0;
  static const String headUpText =
      "(注)このアプリは限られたデータでの表示のため、実行する場合は必ず社内で検討し、専門家などに相談してください。";
  static const int facilitatorCommenSpeed = 100;

  //textSize
  static const double dialogTitleFontSize = 12;
  static const double fontSizeSmall = 12;
  static const double fontSizeMedium = 16;
}

class AppConstantStyles {
  static const styleBoxShadow = BoxShadow(
    color: Colors.black26,
    blurRadius: 6,
    spreadRadius: 0.2,
    offset: Offset(0.5, 1),
  );
}
