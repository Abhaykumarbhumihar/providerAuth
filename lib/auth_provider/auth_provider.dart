
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider_auth/authsource/auth_entity.dart';
import 'package:get_it/get_it.dart';



import '../authsource/auth_use_case.dart';
class AuthProvider extends ChangeNotifier {
  final AuthUseCase _authUseCase = GetIt.I.get<AuthUseCase>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginUser() async {
    final authEntity = AuthEntity(
      emailController.text.trim(),
      passwordController.text.trim(),
    );

    try {
      var dataa=await _authUseCase.loginUser(authEntity);
      print(dataa);
     
    } catch (e) {
      // Handle error
    }
  }
}

