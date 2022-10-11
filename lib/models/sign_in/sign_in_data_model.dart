import 'dart:convert';

SignInDataModel signInDataModelFromMap(String str) => SignInDataModel.fromMap(json.decode(str));

String signInDataModelToMap(SignInDataModel data) => json.encode(data.toMap());

class SignInDataModel {
  SignInDataModel({
    this.mobile,
    this.password,
    this.token,
  });

  int? mobile;
  String? password;
  String? token;

  factory SignInDataModel.fromMap(Map<String, dynamic> json) => SignInDataModel(
    mobile: json["mobile"] == null ? null : json["mobile"],
    password: json["password"] == null ? null : json["password"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toMap() => {
    "mobile": mobile == null ? null : mobile,
    "password": password == null ? null : password,
    "token": token == null ? null : token,
  };
}