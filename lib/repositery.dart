abstract class AuthRepository{

  Future<dynamic>loginUser(String email, String passwod);
  Future<dynamic>signInUser(String email, String passwod);
}