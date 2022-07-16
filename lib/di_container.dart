import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/constants.dart';
import 'domain/notifiers/app_notifier.dart';
import 'domain/repositories/api_admin_repository.dart';
import 'domain/repositories/api_common_repository.dart';
import 'domain/repositories/api_shop_repository.dart';
import 'domain/repositories/api_user_repository.dart';
import 'infrastructure/api/api_admin_repository_impl.dart';
import 'infrastructure/api/api_common_repository_impl.dart';
import 'infrastructure/api/api_shop_repository_impl.dart';
import 'infrastructure/api/api_user_repository_impl.dart';
import 'infrastructure/services/shared_preferences_service.dart';
import 'infrastructure/wrappers/api_clients/api_admin_client.dart';
import 'infrastructure/wrappers/api_clients/api_common_client.dart';
import 'infrastructure/wrappers/api_clients/api_shop_client.dart';
import 'infrastructure/wrappers/api_clients/api_user_client.dart';
import 'infrastructure/wrappers/api_clients/sample/api_client.dart';
import 'infrastructure/wrappers/api_clients/client_creator.dart';

Future<List<SingleChildWidget>> get providers async {
  return <SingleChildWidget>[
    Provider(create: (context) => GlobalKey<NavigatorState>()),
    // await _sharedPreferencesProvider,
    _repositoryProvider1,
    _repositoryProvider2,
    _repositoryProvider3,
    _repositoryProvider4,
    ..._notifierProvider,
  ];
}

// SharedPreferences
Future<SingleChildWidget> get _sharedPreferencesProvider async {
  final prefs = await SharedPreferences.getInstance();
  // myApiToken = prefs.getString(SharedPreferencesService.apiTokenKey);
  return Provider<SharedPreferencesService>(
    create: (_) => SharedPreferencesService(prefs),
  );
}

/// DI repository
SingleChildWidget get _repositoryProvider1 {
  return Provider<ApiUserRepository>(
    create: (_) => ApiUserRepositoryImpl(
      ApiUserClient.create(chopperClient(url: AppConstant.apiUrl)),
    ),
  );
}
SingleChildWidget get _repositoryProvider2 {
  return Provider<ApiAdminRepository>(
    create: (_) => ApiAdminRepositoryImpl(
      ApiAdminClient.create(chopperClient(url: AppConstant.apiUrl)),
    ),
  );
}
SingleChildWidget get _repositoryProvider3 {
  return Provider<ApiShopRepository>(
    create: (_) => ApiShopRepositoryImpl(
      ApiShopClient.create(chopperClient(url: AppConstant.apiUrl)),
    ),
  );
}
SingleChildWidget get _repositoryProvider4 {
  return Provider<ApiCommonRepository>(
    create: (_) => ApiCommonRepositoryImpl(
      ApiCommonClient.create(chopperClient(url: AppConstant.apiUrl)),
    ),
  );
}

/// DI state notifier
List<SingleChildWidget> get _notifierProvider {
  return [
    StateNotifierProvider<AppNotifier, AppState>(
      create: (context) => AppNotifier(context),
    ),
  ];
}
