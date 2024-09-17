import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../../local_storage/constants/app_prefs.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //options.headers[HttpHeaders.contentTypeHeader] = ContentType.json;
    if (kDebugMode) {
      print('REQUEST[${options.method}] => PATH: ${options.path}');
    }
    options.headers[HttpHeaders.acceptLanguageHeader] = AppPrefs.language;

    if (options.baseUrl.contains("google").isFalse && AppPrefs.token.isNotNull) {
      options.headers[HttpHeaders.authorizationHeader] = "Bearer ${AppPrefs.token}";
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    }
    super.onError(err, handler);
  }
}
