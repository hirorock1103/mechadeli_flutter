import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/common/colors.dart';
import 'package:mechadeli_flutter/common/enum.dart';
import 'package:mechadeli_flutter/widgets/common/titles/h1_title.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../domain/notifiers/app_notifier.dart';
import 'dashboard_notifier.dart';

class DashBoard extends StatelessWidget {
  int testCount = 10;

  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<DashboardNotifier, DashboardState>(
          create: (context) => DashboardNotifier(
            context: context,
          ),
        )
      ],
      child: DashBoard(),
    );
  }

  DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          //
          PageTitle(title: "ダッシュボード"),

          Builder(builder: (context) {
            //watch selected flow
            MechadeliFlow selectedFlow =
                context.select((DashboardState state) => state).currentFlow;
            //button list
            List<Widget> list = MechadeliFlow.values
                .map((e) => Container(
              margin: EdgeInsets.all(5),
              child: ElevatedButton(
                  style: selectedFlow == e
                      ? ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.blue))
                      : null,
                  onPressed: () {
                    context.read<DashboardNotifier>().selectFlow(e);
                  },
                  child: Text(e.toString())),
            ))
                .toList();

            return Card(
              margin: EdgeInsets.all(20),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H1Title(title: "予約状況"),
                    Wrap(
                      children: list,
                    ),
                  ],
                ),
              ),
            );
          }),

          Container(
            width: double.infinity,
            height: 150,
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: () => context.read<DashboardNotifier>().addCount(),
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
              child: Center(
                child: Text(
                  context
                      .select((DashboardState state) => state)
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
              child: Center(
                child: Text(
                  context.select((AppState state) => state).count.toString(),
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
