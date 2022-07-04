import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

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
    return Container(
      child: Column(
        children: [


          Container(
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: () => context.read<HomePageTopNotifier>().addCount(),
              child: Text(
                "push(ページごと状態管理)",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Builder(builder: (context) {
            return Container(
              width: double.infinity,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  context
                      .select((HomePageTopState state) => state)
                      .count
                      .toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
          }),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: () => context.read<AppNotifier>().addCount(),
              child: Text(
                "push(APPごと状態管理)",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Builder(builder: (context) {
            return Container(
              width: double.infinity,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text(
                  context
                      .select((AppState state) => state)
                      .count
                      .toString(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
