import 'package:dio/dio.dart';

class NetworkManager {
  static NetworkManager? _instance;

  static NetworkManager get instance {
    _instance ??= NetworkManager._init();
    return _instance!;
  }

  NetworkManager._init() {
    final BaseOptions baseOptions =
        BaseOptions(baseUrl: 'http://test11.internative.net/');
    _dio = Dio();
  }

  late final Dio _dio;

  Future<void> dioGet<T>(String path, T model) async {
    final response = await _dio.get(path);
  }
}
