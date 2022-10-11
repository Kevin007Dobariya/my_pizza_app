import 'dart:convert';

AddReferralModel addReferralModelFromMap(String str) => AddReferralModel.fromMap(json.decode(str));

String addReferralModelToMap(AddReferralModel data) => json.encode(data.toMap());

class AddReferralModel {
  AddReferralModel({
    this.status,
    this.msg,
  });

  int? status;
  String? msg;

  factory AddReferralModel.fromMap(Map<String, dynamic> json) => AddReferralModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
  };
}