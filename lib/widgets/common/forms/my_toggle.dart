import 'package:flutter/material.dart';


class MyToggle extends StatelessWidget {

  Function(bool)? onChange;
  bool value;


   MyToggle({ required this.value, required this.onChange,  Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text("test"),
      value: value,
      onChanged: onChange,
      secondary: Icon(Icons.lightbulb_outlined),
    );
  }
}
