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
  @Post(path: '/shop/updateShop/{id}')
  Future<Response> updateShop(
      @Body() Map<String, dynamic> data,
      @Path('id') int shopId,
    );
  @Get(path: '/shop/getSubCategory')
  Future<Response> getSubCategory(
      // @Query() int client_id,
      // @Path('id') int shopId,
      );

  //shop plan
  @Get(path: '/shop/getShopPlanListByShopId/{id}')
  Future<Response> getShopPlanListByShopId(
    // @Query() int client_id,
    @Path('id') int shopId,
  );
  @Post(path: '/shop/registerShopPlan')
  Future<Response> registerShopPlan(
      @Body() Map<String, dynamic> data,
      );
  @Post(path: '/shop/updateShopPlan/{id}')
  Future<Response> updateShopPlan(
      @Body() Map<String, dynamic> data,
      @Path('id') int shopPlanId,
      );
  @Post(path: '/shop/updatePlanMatrix')
  Future<Response> updatePlanMatrix(
      @Body() Map<String, dynamic> data,
      // @Path('id') int shopPlanId,
      );

  //option
  @Get(path: '/shop/getOptionPlanListByShopPlanId/{id}')
  Future<Response> getOptionPlanListByShopPlanId(
      // @Query() int client_id,
      @Path('id') int shopPlanId,
      );
  @Get(path: '/shop/getOptionPlanListByShopId/{id}')
  Future<Response> getOptionPlanListByShopId(
      // @Query() int client_id,
      @Path('id') int shopId,
      );
  @Post(path: '/shop/registerOptionPlan')
  Future<Response> registerOptionPlan(
      @Body() Map<String, dynamic> data,
      );
  @Post(path: '/shop/updateOptionPlan/{id}')
  Future<Response> updateOptionPlan(
      @Body() Map<String, dynamic> data,
      @Path('id') int optionPlanId,
      );
}
