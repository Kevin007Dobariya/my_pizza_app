import 'dart:convert';

VerifyOtpModel verifyOtpModelFromMap(String str) => VerifyOtpModel.fromMap(json.decode(str));

String verifyOtpModelToMap(VerifyOtpModel data) => json.encode(data.toMap());

class VerifyOtpModel {
  VerifyOtpModel({
    this.status,
    this.msg,
    this.userId,
  });

  int? status;
  String? msg;
  String? userId;

  factory VerifyOtpModel.fromMap(Map<String, dynamic> json) => VerifyOtpModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    userId: json["user_id"] == null ? null : json["user_id"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "user_id": userId == null ? null : userId,
  };
}
