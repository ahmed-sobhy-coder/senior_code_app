// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

import 'dart:convert';

ResponseModel responseModelFromJson(String str) => ResponseModel.fromJson(json.decode(str));

class BaseResponse {
  String? code;
  bool? status;
  String? message;
  BaseResponse({this.code, this.status, this.message});
}

class ResponseModel extends BaseResponse {
  dynamic data;

  ResponseModel({
    super.code,
    super.status,
    super.message,
    this.data,
  });

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"],
      );
}

class ResponseListModel extends BaseResponse {
  List<dynamic>? data;

  ResponseListModel({
    super.code,
    super.status,
    super.message,
    this.data,
  });

  factory ResponseListModel.fromJson(Map<String, dynamic> json) => ResponseListModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        data: json["data"],
      );
}
