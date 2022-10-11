import 'dart:convert';

CheckLoginDataModel checkLoginDataModelFromMap(String str) => CheckLoginDataModel.fromMap(json.decode(str));

String checkLoginDataModelToMap(CheckLoginDataModel data) => json.encode(data.toMap());

class CheckLoginDataModel {
  CheckLoginDataModel({
    this.userId,
    this.token,
  });

  String? userId;
  String? token;

  factory CheckLoginDataModel.fromMap(Map<String, dynamic> json) => CheckLoginDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
    "token": token == null ? null : token,
  };
}
