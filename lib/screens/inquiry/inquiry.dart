import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../domain/notifiers/app_notifier.dart';
import 'inquiry_notifier.dart';

class Inquiry extends StatelessWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<InquiryNotifier, InquiryState>(
          create: (context) => InquiryNotifier(
            context: context,
          ),
        )
      ],
      child: Inquiry(),
    );
  }

  const Inquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          PageTitle(title: "お問い合わせ"),

        ],
      ),
    );
  }
}
