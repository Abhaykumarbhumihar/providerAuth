import 'auth_entity.dart';

abstract class AuthRepository {
  Future<dynamic> loginUser(AuthEntity authEntity);
  Future<dynamic> signInUser(AuthEntity authEntity);
}