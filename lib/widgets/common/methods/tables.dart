import 'package:flutter/material.dart';
import '../../../common/colors.dart';

TableRow buildTableRowByMap(
    {required Map<String, String> titles, VoidCallback? ontap}) {
  final list = titles.entries
      .map((e) => Container(
            decoration: e.key == "th"
                ? BoxDecoration(color: AppColors.thBackgroundColor)
                : null,
            padding: EdgeInsets.all(20),
            child: Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(e.value),
                ontap != null && e.key == "td"
                    ? InkWell(
                        onTap: ontap,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("詳細", style: TextStyle(color: Colors.white),),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent),
                        ))
                    : Container(),
              ],
            ),
          ))
      .toList();

  return TableRow(children: list);
}
