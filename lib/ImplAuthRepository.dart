import 'package:provider_auth/repositery.dart';

import 'authsource/authSource.dart';

class ImplAuthRepository extends AuthRepository{
  final AuthSource _authSource;

  ImplAuthRepository(this._authSource);
  @override
  Future<dynamic> loginUser(String email, String passwod)async {
   return _authSource.loginUser(email, passwod);
    
  }

  @override
  Future<dynamic> signInUser(String email, String passwod)async {
   
     return _authSource.signInUser(email, passwod);
  }

}