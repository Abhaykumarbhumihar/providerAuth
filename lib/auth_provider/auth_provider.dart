
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_auth/repositery.dart';


class AuthProvider  with ChangeNotifier{
   final AuthRepository _repository;

   AuthProvider(this._repository);
TextEditingController emailController=TextEditingController();
TextEditingController passwrdController=TextEditingController();

saveUser()async{
  var email=emailController.text.toString().trim();
  var passwrod=passwrdController.text.toString().trim();
  print(email+" "+passwrod);
var data= await _repository.loginUser(email, email);
print(data);

}

}