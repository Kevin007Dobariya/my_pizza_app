
import 'dart:convert';

ResendOtpDataModel resendOtpDataModelFromMap(String str) => ResendOtpDataModel.fromMap(json.decode(str));

String resendOtpDataModelToMap(ResendOtpDataModel data) => json.encode(data.toMap());

class ResendOtpDataModel {
  ResendOtpDataModel({
    this.mobile,
    this.token,
  });

  String? mobile;
  String? token;

  factory ResendOtpDataModel.fromMap(Map<String, dynamic> json) => ResendOtpDataModel(
    mobile: json["mobile"] == null ? null : json["mobile"],
    token: json["token"] == null ? null : json["token"],
  );

  Map<String, dynamic> toMap() => {
    "mobile": mobile == null ? null : mobile,
    "token": token == null ? null : token,
  };
}
