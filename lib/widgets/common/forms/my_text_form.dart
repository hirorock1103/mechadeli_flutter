import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';


class MyTextForm extends StatelessWidget {

  String hintText;
   MyTextForm({ required this.hintText, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 12, color: AppColors.primary),
        fillColor: AppColors.primary[100],
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 2.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: AppColors.primary[100]!,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
