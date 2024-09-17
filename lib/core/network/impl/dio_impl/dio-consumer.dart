// ignore_for_file: file_names

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:senior_code_app/core/extensions.dart';

import '../../abstract/api_consumer.dart';
import '../../constants/constants.dart';
import '../../constants/endpoinst.dart';
import 'dio_interceptors.dart';

class DioConsumer extends ApiConsumer {
  final Dio client;
  final DioInterceptor dioInterceptor;
  final LogInterceptor logInterceptor;
  DioConsumer({
    required this.client,
    required this.dioInterceptor,
    required this.logInterceptor,
  });

  void dioInit() {
    client.options
      ..responseType = ResponseType.plain
      ..followRedirects = false
      ..responseType = ResponseType.plain
      ..headers = {"accept": "application/json"}
      ..receiveDataWhenStatusError = true
      ..sendTimeout = ApiConstants.sendTimeOut
      ..connectTimeout = ApiConstants.connectTimeOut
      ..receiveTimeout = ApiConstants.receiveTimeOut
      ..receiveDataWhenStatusError = true
      ..baseUrl = EndPoints.baseUrl;

    client.interceptors.add(dioInterceptor);
    // we use login interceptor in debug models only
    if (kDebugMode) {
      client.interceptors.add(logInterceptor);
    }
    debugPrint("initialize");
  }

  @override
  Future<Response> getRequest({
    String baseUrl = EndPoints.baseUrl,
    required String path,
    Map<String, dynamic>? queryParams,
  }) async {
    client.options.baseUrl = baseUrl;
    final Response<dynamic> response = await client.get(path, queryParameters: queryParams);
    debugPrint(response.realUri.toString());
    //   debugPrint(response.data.json);
    debugPrint(" status code is ${response.statusCode}");
    return response;
  }

  @override
  Future<Response> postRequest({
    String baseUrl = EndPoints.baseUrl,
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParams,
    bool isFormData = false,
  }) async {
    client.options.baseUrl = baseUrl;

    if (isFormData.isFalse) {
      Response response = await client.post(
        path,
        queryParameters: queryParams,
        data: body,
      );

      return response;
      //  return handleResponse(response);
    } else {
      // Create a FormData object.
      final formData = FormData();

      // Add the body data to the FormData object.
      for (final entry in body!.entries) {
        if (entry.value is String && entry.value.endsWith('.jpg')) {
          // Add the file to the FormData object.
          formData.files.add(
            MapEntry(
              entry.key,
              await MultipartFile.fromFile(entry.value as String),
            ),
          );
        } else {
          // Add the other data to the FormData object.
          if (entry.value != null) {
            formData.fields.add(MapEntry(entry.key, entry.value.toString()));
          } else {
            formData.fields.add(MapEntry(entry.key, ''));
          }
        }
      }

      // Send the FormData object.
      final Response response = await client.post(
        path,
        queryParameters: queryParams,
        data: formData,
      );

      return response;
    }
  }

  @override
  Future putRequest({
    String baseUrl = EndPoints.baseUrl,
    required String path,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParams,
    bool isFormData = false,
  }) async {
    final Response<dynamic> response = await client.put(
      path,
      queryParameters: queryParams,
      data: isFormData ? FormData.fromMap(body!) : body,
    );
    return jsonDecode(response.data.toString());
  }

  @override
  Future deleteRequest(
      {String baseUrl = EndPoints.baseUrl,
      required String path,
      Map<String, dynamic>? body,
      Map<String, dynamic>? queryParams}) async {
    final Response<dynamic> response = await client.delete(
      path,
      queryParameters: queryParams,
      data: body,
    );
    return jsonDecode(response.data.toString());
  }
}
