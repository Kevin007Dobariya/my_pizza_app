import 'dart:convert';

SignUpModel signUpModelFromMap(String str) => SignUpModel.fromMap(json.decode(str));

String signUpModelToMap(SignUpModel data) => json.encode(data.toMap());

class SignUpModel {
  SignUpModel({
    this.status,
    this.msg,
    this.otp,
  });

  int? status;
  String? msg;
  int? otp;

  factory SignUpModel.fromMap(Map<String, dynamic> json) => SignUpModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    otp: json["otp"] == null ? null : json["otp"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "otp": otp == null ? null : otp,
  };
}