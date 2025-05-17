import 'package:dio/dio.dart';
import 'package:fabriq_pro/core/interceptor.dart';

import '../data/interfaces/serializable.dart';

class ApiClient {
  ApiClient() {
    dio = Dio(
      BaseOptions(baseUrl: "http://192.168.9.120:8888/api/v1", validateStatus: (value) => true),
    );

    dio.interceptors.add(AuthInterceptor(dio: dio));
  }

  late final Dio dio;

  Future<T> genericGetRequest<T>(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await dio.get(path, queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw Exception(
        "GET: $path, ${queryParams.toString()} - ${response.statusCode}: ${response.data}",
      );
    }
  }

  Future<T> genericPostRequest<T>(
    String path, {
    required IJsonSerializable data,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await dio.post(path, data: data.toJson(), queryParameters: queryParams);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.data as T;
    } else {
      throw Exception(response.data);
    }
  }

  Future<T> genericPatchRequest<T>(
      String path, {
        required IJsonSerializable data,
        Map<String, dynamic>? queryParams,
      }) async {
    final response = await dio.patch(path, data: data.toJson(), queryParameters: queryParams);
    if (response.statusCode == 200) {
      return response.data as T;
    } else {
      throw Exception(response.data);
    }
  }

  Future<bool> deleteRequest(String path, {Map<String, dynamic>? queryParams}) async {
    final response = await dio.delete(path, queryParameters: queryParams);
    if (response.statusCode == 200 || response.statusCode == 204) {
      return true;
    } else {
      throw Exception(response.data);
    }
  }
}
