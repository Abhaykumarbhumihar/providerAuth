import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class SnackbarService {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  // void init(BuildContext context) {
  //   _scaffoldMessengerKey.currentState = ScaffoldMessenger.of(context);
  // }

  void showSnackbar(String message) {
    _scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(content: Text(message)));
  }
}
