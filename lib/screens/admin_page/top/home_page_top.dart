import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/shop.dart';
import '../../../domain/notifiers/app_notifier.dart';
import 'home_page_top_notifier.dart';

class HomePageTop extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomePageTopNotifier, HomePageTopState>(
          create: (context) => HomePageTopNotifier(
            context: context,
          ),
        )
      ],
      child: HomePageTop(),
    );
  }

  const HomePageTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //必要な情報取得する
    context.read<HomePageTopNotifier>().getShopList();

    return Container(
      child: Builder(builder: (context) {
        bool isLoading =
            context.select((HomePageTopState state) => state).isLoading;
        return isLoading
            ? Center(
                child: Container(
                child: CircularProgressIndicator(),
              ))
            : Column(
                children: [
                  H1Title(title: "ダッシュボード"),
                  Text("店舗一覧"),
                  _shopList(),
                ],
              );
      }),
    );
  }

  Widget _shopList() {
    return Builder(builder: (context) {
      List<Shop> shopList =
          context.select((HomePageTopState state) => state).shops;
      print(shopList);

      return Container(
        margin: EdgeInsets.all(10),
        child: Table(
          border: TableBorder.all(color: Colors.grey),
          columnWidths: <int, TableColumnWidth>{
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(3),
            3: FlexColumnWidth(2),
            4: FlexColumnWidth(2),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: shopList.map((e) {
            return TableRow(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(e.id.toString()),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(e.name.toString()),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: applyStatusToColor(
                    ApplyStatusMap[e.apply_status] as ApplyStatus),
                child: Text(applyStatusIntToString(e.apply_status)),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      print("test");
                    },
                    child: Text("詳細"),
                  )),
            ]);
          }).toList(),
        ),
      );
    });
  }
}
