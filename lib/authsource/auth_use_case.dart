import 'auth_entity.dart';
import 'repositery.dart';

class AuthUseCase {
  final AuthRepository _authRepository;

  AuthUseCase(this._authRepository);

  Future<dynamic> loginUser(AuthEntity authEntity) async {
    final data = await _authRepository.loginUser(authEntity);
    // Handle login logic
    return data;
  }
}
