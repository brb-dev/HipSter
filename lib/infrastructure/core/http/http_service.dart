import 'package:dio/dio.dart';

import '../../../config.dart';

class HttpService {
  late Dio _dio;
  Dio dio() => _dio;

  HttpService({
    required Config config,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: Duration(milliseconds: config.httpSendTimeout),
        connectTimeout: Duration(milliseconds: config.httpConnectTimeout),
        receiveTimeout: Duration(milliseconds: config.httpReceiveTimeout),
      ),
    );
    _dio.interceptors.addAll([
      ...interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  HttpService.mockDio(Dio dio) : _dio = dio;

  Future<Response> request({
    required String method,
    required String url,
    dynamic data = const {}, // can be Map<String, dynamic> or FormData
    ResponseType responseType = ResponseType.json,
    String apiEndpoint = '',
    bool overrideBaseUrl = false,
  }) async {
    try {
      if (overrideBaseUrl) _dio.options.baseUrl = url;

      _dio.options.method = method;
      _dio.options.responseType = responseType;

      return await _dio.request(url, data: data == const {} ? null : data);
    } on DioException catch (e) {
      throw e.error ?? e;
    }
  }
}
