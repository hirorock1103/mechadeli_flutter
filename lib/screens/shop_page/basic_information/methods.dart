import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../domain/entities/shop_plan.dart';

List<DropdownMenuItem<String>> getShopPlanMenu(
    BuildContext context, List<ShopPlan>? shopPlanList) {
  List<DropdownMenuItem<String>> list = shopPlanList?.map((e) {
        return DropdownMenuItem(
          value: e.id.toString(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("プラン名：" + e.id.toString() + " " + e.plan_title),
              if (MediaQuery.of(context).size.width > AppConstant.tabletMaxSize)
                Row(
                  children: [
                    Text(
                      "price: ¥" + e.plan_price.toString(),
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                          "(" +
                              e.main_category_title +
                              "/" +
                              e.sub_category_title +
                              ")",
                          style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
            ],
          ),
        );
      }).toList() ??
      [];

  list.insert(0, DropdownMenuItem(value: "0", child: Text("未選択")));

  return list;
}
