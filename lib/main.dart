import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/authsource/ImplAuthRepository.dart';
import 'package:provider_auth/auth_provider/auth_provider.dart';
import 'package:provider_auth/authsource/repositery.dart';
import 'package:provider_auth/screen/home.dart';

import 'authsource/auth_use_case.dart';
import 'snackbar_service.dart';


void main() {
  // Register your dependencies using get_it
  GetIt.I.registerLazySingleton<AuthRepository>(() => ImplAuthRepository());
  GetIt.I.registerLazySingleton<AuthUseCase>(() => AuthUseCase(GetIt.I.get<AuthRepository>()));
  GetIt.I.registerLazySingleton<SnackbarService>(() => SnackbarService());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

