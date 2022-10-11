import 'dart:convert';

AddPasswordDataModel addPasswordDataModelFromMap(String str) => AddPasswordDataModel.fromMap(json.decode(str));

String addPasswordDataModelToMap(AddPasswordDataModel data) => json.encode(data.toMap());

class AddPasswordDataModel {
  AddPasswordDataModel({
    this.userId,
    this.password,
    this.token,
  });

  String? userId;
  String? password;
  String? token;

  factory AddPasswordDataModel.fromMap(Map<String, dynamic> json) => AddPasswordDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    password: json["password"] == null ? null : json["password"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
    "password": password == null ? null : password,
    "token": token == null ? null : token,
  };
}
