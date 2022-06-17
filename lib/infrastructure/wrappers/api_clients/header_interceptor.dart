import 'dart:async';

import 'package:chopper/chopper.dart';

String? myApiToken;

class HeaderInterceptor implements RequestInterceptor {
  HeaderInterceptor();

  static const String authHeader = 'Authorization';
  static const String bearer = 'Bearer ';

  @override
  FutureOr<Request> onRequest(Request request) async {
    if (myApiToken != null) {
      // logger.info("send with api token : $myApiToken");
      return request.copyWith(
        headers: {
          authHeader: bearer + myApiToken!,
          'Content-Type': 'application/json',
        },
      );
    } else {
      return request.copyWith(
        headers: {
          'Content-Type': 'application/json',
        },
      );
    }
  }
}