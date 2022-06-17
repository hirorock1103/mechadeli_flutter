import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/constants.dart';
import 'domain/notifiers/app_notifier.dart';
import 'domain/repositories/api_repository.dart';
import 'infrastructure/api/api_repository_impl.dart';
import 'infrastructure/services/shared_preferences_service.dart';
import 'infrastructure/wrappers/api_clients/api_client.dart';
import 'infrastructure/wrappers/api_clients/client_creator.dart';

Future<List<SingleChildWidget>> get providers async {
  return <SingleChildWidget>[
    Provider(create: (context) => GlobalKey<NavigatorState>()),
    await _sharedPreferencesProvider,
    _repositoryProvider,
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
SingleChildWidget get _repositoryProvider {
  return Provider<ApiRepository>(
    create: (_) => ApiRepositoryImpl(
      ApiClient.create(chopperClient(url: AppConstant.apiUrl)),
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
