import '../../core/client.dart';
import '../../core/secure_storage.dart';
import '../models/login_model.dart';

class AuthRepository {
  AuthRepository({required this.client});

  final ApiClient client;

  Future<String?> login(LoginModel data) async {
    final rawToken = await client.genericPostRequest('/users/login', data: data);
    final token = rawToken['accessToken'];

    if (token != null){
      await SecureStorage.setJwtToken(token);
      await SecureStorage.setLogin(data.login);
      await SecureStorage.setPassword(data.password);
    }

    return rawToken['accessToken'];
  }

  Future<String?> refreshToken() async {
    final userLogin = await SecureStorage.getLogin();
    final userPassword = await SecureStorage.getPassword();

    if (userLogin == null || userPassword == null) {
      return null;
    }

    return await login(LoginModel(login: userLogin, password: userPassword));
  }
}
