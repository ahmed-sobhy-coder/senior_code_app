
import '../../exports.dart';

/// status : true
/// message : "تم اظهار القائمة التعريفية بنجاح"
/// data : {"id":1,"description":"وصف","video":"https://tripia-aap.s3.amazonaws.com/public/videos/1723757325_WhatsApp Video 2024-08-16 at 12.26.25 AM.mp4"}

class InfoResponseModel extends ResponseModel {
  InfoResponseModel({
    super.status,
    super.message,
    super.data,
  });

  InfoResponseModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? InfoModel.fromJson(json['data']) : null;
  }

  InfoResponseModel copyWith({
    bool? status,
    String? message,
    InfoModel? data,
  }) =>
      InfoResponseModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }
}

/// id : 1
/// description : "وصف"
/// video : "https://tripia-aap.s3.amazonaws.com/public/videos/1723757325_WhatsApp Video 2024-08-16 at 12.26.25 AM.mp4"

class InfoModel {
  InfoModel({
    this.id,
    this.description,
    this.video,
  });

  InfoModel.fromJson(dynamic json) {
    id = json['id'];
    description = json['description'];
    video = json['video'];
  }
  num? id;
  String? description;
  String? video;
  InfoModel copyWith({
    num? id,
    String? description,
    String? video,
  }) =>
      InfoModel(
        id: id ?? this.id,
        description: description ?? this.description,
        video: video ?? this.video,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['description'] = description;
    map['video'] = video;
    return map;
  }
}
