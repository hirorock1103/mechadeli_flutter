import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;

part 'api_admin_client.chopper.dart';

@ChopperApi(baseUrl: '')
abstract class ApiAdminClient extends ChopperService {
  static ApiAdminClient create([ChopperClient? client]) => _$ApiAdminClient(client);

  //Admin
  @Post(path: '/admin/userRegister')
  Future<Response> registerAdmin(
      @Body() Map<String, dynamic> data,
      );

  /// Shop ( shop )
  @Get(path: '/admin/getShopList2')
  //Future<Response<Map<String, dynamic>>> getUserList();
  Future<Response> getShopList({
    @Query() int? user_id,
  });

}
