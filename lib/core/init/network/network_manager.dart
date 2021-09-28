import 'dart:io';

import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  NetworkManager._init() {
    final BaseOptions baseOptions = BaseOptions(
        baseUrl: 'https://jsonplaceholder.typicode.com/',
        contentType: 'application/json; charset=utf-8');
    _dio = Dio(baseOptions);
   
  }

 late final Dio _dio;

  Future<dynamic>? dioGet(
    String path,
  ) async {
    final response = await _dio.get(path);
    print(response.data);
    return ifElse(response);
  }

  Future dioPost({required String path, required Map data}) async {
    final response = await _dio.post(path,
        data: data,
        options: Options(headers: {
          "Authorization": "eren@test.com",
        }));
    print(response.data);
    print(response.headers);

    return ifElse(response);
  }

  dynamic ifElse(Response response) {
    if (response.statusCode == HttpStatus.ok) {
      return response.data;
    } else {
      return null;
    }
  }
}
