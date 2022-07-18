import 'package:flutter/material.dart';

Route createMyRoute(Widget widget) {

  return
    PageRouteBuilder(
      pageBuilder: (c, a1, a2) => widget,
      transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim,child: child,),
      transitionDuration: Duration(milliseconds:500)
    );

}