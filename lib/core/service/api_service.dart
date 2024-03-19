import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:getxcli_yantralive/core/constant.dart';

class ApiClient {
  final Dio _dio = Dio();
  ApiClient() {
    _dio
    ..options.baseUrl = Constants.baseUrl
    ..options.connectTimeout = const Duration(seconds: 60)
    ..options.receiveTimeout =  const Duration(seconds: 60)
    ..options.headers = <String, dynamic> {}
    ..options.responseType = ResponseType.json
    ..interceptors.addAll([

      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        logPrint: print
      )
    ]);
  }

  //Get: .......
Future<Map<String,dynamic>> get(
    String url,
    ) async {
    try {
      final response = await _dio.get<Map<String,dynamic>>(url);
      if(kDebugMode) {
        print(response.data);
      }
      return response.data as Map<String,dynamic>;
    } on DioException catch (e) {
      final errResponse = <String,dynamic>{};
      errResponse['error'] = e.response?.data["error"];
      errResponse['statusCode'] = e.response?.statusCode;
      return errResponse;
    }

}

}