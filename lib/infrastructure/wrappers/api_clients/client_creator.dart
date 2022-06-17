import 'package:chopper/chopper.dart';

import 'header_interceptor.dart';

ChopperClient chopperClient({required String url}) {
  return ChopperClient(
    baseUrl: url,
    converter: const JsonConverter(),
    errorConverter: const JsonConverter(),
    interceptors: <dynamic>[HeaderInterceptor()],
  );
}