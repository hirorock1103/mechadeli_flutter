import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:mechadeli_flutter/widgets/common/titles/page_title.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../domain/notifiers/app_notifier.dart';
import '../widgets/app_bar.dart';
import '../widgets/drawer.dart';
import '../widgets/side_navi.dart';
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

    ///ここから共通
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: UserDrawer(),
      appBar: UserAppBar( title: "test",size: size, ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          size.width > AppConstant.tabletMaxSize ? Container(child: Text("test"),width: 200,) : SideNavgation(),
          Expanded(
            child: buildContents(context),
          ),
        ],
      ),
    );
    ///ここまで共通

  }

  Widget buildContents(BuildContext context){

    return Container(
      child: Column(
        children: [

          PageTitle(title: "お問い合わせ"),

        ],
      ),
    );
  }

}
