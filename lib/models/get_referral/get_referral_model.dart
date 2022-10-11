import 'dart:convert';

GetReferralModel getReferralModelFromMap(String str) => GetReferralModel.fromMap(json.decode(str));

String getReferralModelToMap(GetReferralModel data) => json.encode(data.toMap());

class GetReferralModel {
  GetReferralModel({
    this.status,
    this.msg,
    this.data,
  });

  int? status;
  String? msg;
  List<Datum>? data;

  factory GetReferralModel.fromMap(Map<String, dynamic> json) => GetReferralModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toMap())),
  };
}

class Datum {
  Datum({
    this.name,
    this.registerOn,
    this.isPurchase,
  });

  String? name;
  DateTime? registerOn;
  String? isPurchase;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
    name: json["name"] == null ? null : json["name"],
    registerOn: json["register_on"] == null ? null : DateTime.parse(json["register_on"]),
    isPurchase: json["is_purchase"] == null ? null : json["is_purchase"],
  );

  Map<String, dynamic> toMap() => {
    "name": name == null ? null : name,
    "register_on": registerOn == null ? null : registerOn!.toIso8601String(),
    "is_purchase": isPurchase == null ? null : isPurchase,
  };
}
