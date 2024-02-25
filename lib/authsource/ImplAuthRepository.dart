import 'package:provider_auth/authsource/repositery.dart';
import 'auth_entity.dart';

class ImplAuthRepository extends AuthRepository {
  @override
  Future<dynamic> loginUser(AuthEntity authEntity) async {
    // Implement your login logic here
    // For example, return the user data from an API call
    return {'email': authEntity.email, 'password': authEntity.password};
  }

  @override
  Future<dynamic> signInUser(AuthEntity authEntity) async {
    // Implement your sign-in logic here
    // For example, return the user data from an API call
    return {'email': authEntity.email, 'password': authEntity.password};
  }
}
