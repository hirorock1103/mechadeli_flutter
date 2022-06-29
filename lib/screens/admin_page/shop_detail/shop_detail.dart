import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:provider/provider.dart';

import '../../../domain/entities/shop.dart';
import '../../../domain/notifiers/app_notifier.dart';
import 'shop_detail_notifier.dart';

class ShopDetail extends StatelessWidget {
  static Widget wrapped() {
    print("test");
    return MultiProvider(
      providers: [
        StateNotifierProvider<ShopDetailNotifier, ShopDetailState>(
          create: (context) => ShopDetailNotifier(
            context: context,
          ),
        )
      ],
      child: ShopDetail(),
    );
  }

  const ShopDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //値受け渡し

    //必要な情報取得する
    context.read<ShopDetailNotifier>().getReady();

    return Container(
      child: Builder(builder: (context) {
        bool isLoading =
            context.select((ShopDetailState state) => state).isLoading;
        return isLoading
            ? Center(
                child: Container(
                child: CircularProgressIndicator(),
              ))
            : Column(
                children: [
                  H1Title(title: "ショップ詳細"),
                  Builder(
                    builder: (context) {
                      Shop shop = context.select((ShopDetailState state) => state).shop;
                      return Text("店舗基本情報 $shop");
                    }
                  ),
                  _shopBasicInfo(),
                ],
              );
      }),
    );
  }

  Widget _shopBasicInfo() {
    return Column(children: [


    ],);

  }

}
