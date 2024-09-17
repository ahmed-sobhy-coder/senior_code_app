import '../network/model/response_model.dart';

/// status : true
/// message : "تم اظهار قائمة الاعلانات بنجاح"
/// data : [{"id":4,"name":null,"img":"https://tripia-aap.s3.amazonaws.com/ads/1723854140_home4.jpg"}]

class AdsResponseModel extends ResponseModel {
  AdsResponseModel({
    super.status,
    super.message,
    super.data,
  });

  AdsResponseModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <AdModel>[];
      json['data'].forEach((v) {
        data?.add(AdModel.fromJson(v));
      });
    }
  }

  AdsResponseModel copyWith({
    bool? status,
    String? message,
    List<AdModel>? data,
  }) =>
      AdsResponseModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 4
/// name : null
/// img : "https://tripia-aap.s3.amazonaws.com/ads/1723854140_home4.jpg"

class AdModel {
  AdModel({
    this.id,
    this.name,
    this.img,
  });

  AdModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    img = json['img'];
  }
  num? id;
  dynamic name;
  String? img;
  AdModel copyWith({
    num? id,
    dynamic name,
    String? img,
  }) =>
      AdModel(
        id: id ?? this.id,
        name: name ?? this.name,
        img: img ?? this.img,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['img'] = img;
    return map;
  }
}
