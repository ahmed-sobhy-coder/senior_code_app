import '../network/model/response_model.dart';

/// status : true
/// message : "تم اظهار قائمة الفئات"
/// data : [{"id":1,"img":"categories/store.jpeg","name":"متجر","description":"وصف","active":1},{"id":2,"img":"categories/Homemaintenance.jpeg","name":"صيانة منزل","description":"وصف","active":1},{"id":3,"img":"categories/fastservice.jpeg","name":"خدمة سريعة","description":"وصف","active":1}]
/// pagination : 10

class ItemResponseModel extends ResponseModel {
  ItemResponseModel({
    super.status,
    super.message,
    super.data,
  });

  ItemResponseModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <CategoryModel>[];
      json['data'].forEach((v) {
        data?.add(CategoryModel.fromJson(v));
      });
    }
  }
  ItemResponseModel copyWith({
    bool? status,
    String? message,
    List<CategoryModel>? data,
  }) =>
      ItemResponseModel(
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

/// id : 1
/// img : "categories/store.jpeg"
/// name : "متجر"
/// description : "وصف"
/// active : 1

class CategoryModel {
  CategoryModel({
    this.id,
    this.img,
    this.name,
    this.description,
    this.flagName,
  });

  CategoryModel.fromJson(dynamic json) {
    id = json['id'];
    img = json['img'];
    name = json['name'];
    description = json['description'];
    flagName = json['flagName'];
  }
  num? id;
  String? img;
  String? name;
  String? description;
  String? flagName;
  CategoryModel copyWith({
    num? id,
    String? img,
    String? name,
    String? description,
    String? flagName,
  }) =>
      CategoryModel(
        id: id ?? this.id,
        img: img ?? this.img,
        name: name ?? this.name,
        description: description ?? this.description,
        flagName: flagName ?? this.flagName,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['img'] = img;
    map['name'] = name;
    map['description'] = description;
    map['flagName'] = flagName;
    return map;
  }
}
