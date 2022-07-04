import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;

part 'api_shop_client.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class ApiShopClient extends ChopperService {
  static ApiShopClient create([ChopperClient? client]) => _$ApiShopClient(client);

  @Post(path: '/shop/userRegister')
  Future<Response> registerShop(
      @Body() Map<String, dynamic> data,
      );
  @Post(path: '/shop/login')
  Future<Response> shopLogin(
      @Body() Map<String, dynamic> data,
      );
}
