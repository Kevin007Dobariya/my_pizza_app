import 'dart:convert';

ChangePasswordModel changePasswordModelFromMap(String str) => ChangePasswordModel.fromMap(json.decode(str));

String changePasswordModelToMap(ChangePasswordModel data) => json.encode(data.toMap());

class ChangePasswordModel {
  ChangePasswordModel({
    this.status,
    this.msg,
  });

  int? status;
  String? msg;

  factory ChangePasswordModel.fromMap(Map<String, dynamic> json) => ChangePasswordModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
  };
}