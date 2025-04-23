import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../data/repositories/auth_repository.dart';
import 'routing/router.dart';
import 'routing/routes.dart';
import 'secure_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required Dio dio}) : _dio = dio;
  final Dio _dio;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final jwtToken = await SecureStorage.getJwtToken();
    if (jwtToken != null) {
      options.headers['Authorization'] = "Bearer $jwtToken";
    }
    return handler.next(options);
  }

  @override
  Future<void> onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == 401) {
      final jwtToken = await navigatorKey.currentContext!.read<AuthRepository>().refreshToken();

      if (jwtToken == null) {
        await SecureStorage.deleteCredentials();
        navigatorKey.currentContext!.go(Routes.login);
        return handler.next(response);
      }

      await SecureStorage.setJwtToken(jwtToken);

      final retryResponse = await _dio.fetch(response.requestOptions);
      return handler.next(retryResponse);
    }

    return handler.next(response);
  }
}
