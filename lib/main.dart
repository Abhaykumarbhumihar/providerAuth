import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/auth_provider/auth_provider.dart';
import 'package:provider_auth/repositery.dart';
import 'package:provider_auth/scree/home.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider(AuthRepository()))
    ],
    child: MaterialApp(
    home: HomePage(),
    ),);
  }
}