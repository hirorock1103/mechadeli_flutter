import 'package:chopper/chopper.dart';
import 'package:http/http.dart' show MultipartFile;

part 'api_client.chopper.dart';

@ChopperApi(baseUrl: '/app')
abstract class ApiClient extends ChopperService {
  static ApiClient create([ChopperClient? client]) => _$ApiClient(client);

  /// User ( 担当者 )
  @Get(path: '/user/index')
  //Future<Response<Map<String, dynamic>>> getUserList();
  Future<Response> getUserList({
    @Query() String? company_code,
  });
  @Post(path: '/user/show')
  Future<Response> getUser(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/user/update')
  Future<Response> updateUser(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/user/register')
  Future<Response> registerUser(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/login')
  Future<Response> userLogin(
    @Body() Map<String, dynamic> data,
  );

  /// Company ( ログイン企業 )
  @Post(path: '/company/show')
  Future<Response> getCompany(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/company/me')
  Future<Response> getCompanyAboutMe(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/company/login')
  Future<Response> companyLogin(
    @Body() Map<String, dynamic> data,
  );
  //画像テスト
  @Post(path: '/user/updateNavigaror')
  @multipart
  Future<Response> uploadOriginalNavigator(
    @Part() int user_id,
    @PartFile() MultipartFile? image,
  );

  /// OCR ( OCR )
  @Post(path: 'ocr/execute')
  @multipart
  Future<Response> uploadOcr(
    @PartFile() MultipartFile? image,
  );

  /// Client ( 顧客 )
  //@Get(path: '/client/index')
  @Get(path: '/client/index_with_license')
  //Future<Response<Map<String, dynamic>>> getUserList();
  Future<Response> getClientList({
    @Query() int? company_id,
  });
  @Post(path: '/client/delete')
  Future<Response> deleteClient(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/client/release')
  Future<Response> releaseClient(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/client/{id}/update')
  Future<Response> updateClient(
    @Body() Map<String, dynamic> data,
    @Path('id') int clientId,
  );
  @Get(path: '/client/{id}/show')
  Future<Response> getClient(
    // @Query() int client_id,
    @Path('id') int clientId,
  );
  @Post(path: '/client/register')
  Future<Response> registerClient(
    @Body() Map<String, dynamic> data,
  );
  @Post(path: '/client/updateNavigator')
  @multipart
  Future<Response> uploadNavigatorImage(
    @Part() int client_id,
    @PartFile() MultipartFile? image,
  );

  /// SummeryReport ( 概況書 )
  @Get(path: '/report/index?client_id={client_id}')
  Future<Response> getReportList({
    @Path('client_id') int? clientId,
  });
  @Post(path: '/report/register')
  Future<Response> registerReport(
    @Body() Map<String, dynamic> data,
  );
  @Get(path: '/report/{id}/show')
  Future<Response> getReport(
    @Path('id') int? reportId,
  );
  @Post(path: '/report/{id}/update')
  Future<Response> updateReport(
    @Body() Map<String, dynamic> data,
    @Path('id') int reportId,
  );
  @Post(path: '/report/delete')
  Future<Response> deleteReport(
      @Body() Map<String, dynamic> data,
      );

  /// Graph（グラフ）
  @Get(path: '/client/graph/comparisons')
  Future<Response> getBusinessData();
  @Post(path: '/client/graph/inhome?company_client_id={company_client_id}')
  Future<Response> getInhouseData(
    @Path('company_client_id') int companyClientId,
  ); // 自社グラフデータ
  @Post(path: '/client/graph/other?company_client_id={company_client_id}')
  Future<Response> getOtherData(
    @Path('company_client_id') int companyClientId,
  ); // 他社グラフデータ
  @Post(path: '/client/graph/star?company_client_id={company_client_id}')
  Future<Response> getStarData(
    @Path('company_client_id') int companyClientId,
  ); // 他社評価データ
}
