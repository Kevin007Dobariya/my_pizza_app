import 'dart:convert';

VerifyOtpDataModel verifyOtpDataModelFromMap(String str) => VerifyOtpDataModel.fromMap(json.decode(str));

String verifyOtpDataModelToMap(VerifyOtpDataModel data) => json.encode(data.toMap());

class VerifyOtpDataModel {
  VerifyOtpDataModel({
    this.mobile,
    this.otp,
    this.token,
  });

  int? mobile;
  int? otp;
  String? token;

  factory VerifyOtpDataModel.fromMap(Map<String, dynamic> json) => VerifyOtpDataModel(
    mobile: json["mobile"] == null ? null : json["mobile"],
    otp: json["otp"] == null ? null : json["otp"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toMap() => {
    "mobile": mobile == null ? null : mobile,
    "otp": otp == null ? null : otp,
    "token": token == null ? null : token,
  };
}