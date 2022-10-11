
import 'dart:convert';

ResendOtpModel resendOtpModelFromMap(String str) => ResendOtpModel.fromMap(json.decode(str));

String resendOtpModelToMap(ResendOtpModel data) => json.encode(data.toMap());

class ResendOtpModel {
  ResendOtpModel({
    this.status,
    this.msg,
    this.otp,
  });

  int? status;
  String? msg;
  String? otp;

  factory ResendOtpModel.fromMap(Map<String, dynamic> json) => ResendOtpModel(
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
