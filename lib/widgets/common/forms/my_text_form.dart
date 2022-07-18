import 'package:flutter/material.dart';
import 'package:mechadeli_flutter/common/colors.dart';


class MyTextForm extends StatelessWidget {

  String hintText;
  TextEditingController? controller;
  ValueChanged? onChange;

   MyTextForm({ required this.hintText,this.controller, this.onChange, Key? key}) : super(key: key);

  Widget build(BuildContext context) {

    if(controller != null){
      controller!.selection = TextSelection.collapsed(offset: controller!.text.length);
    }

    return Form(
      child: TextFormField(

        style: TextStyle(fontSize: 12),
        onChanged: onChange,
        controller: controller ?? null,
        // decoration: InputDecoration(
        //   hintText: hintText,
        //   hintStyle: const TextStyle(fontSize: 12, color: AppColors.primary),
        //   fillColor: AppColors.primary[100],
        //   filled: true,
        //   focusedBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: const BorderSide(
        //       color: AppColors.primary,
        //       width: 2.0,
        //     ),
        //   ),
        //   enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(16),
        //     borderSide: BorderSide(
        //       color: AppColors.primary[100]!,
        //       width: 1.0,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
