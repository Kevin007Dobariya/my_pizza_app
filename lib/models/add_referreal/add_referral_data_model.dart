import 'dart:convert';

AddReferralDataModel addReferralDataModelFromMap(String str) => AddReferralDataModel.fromMap(json.decode(str));

String addReferralDataModelToMap(AddReferralDataModel data) => json.encode(data.toMap());

class AddReferralDataModel {
  AddReferralDataModel({
    this.userId,
    this.referralCode,
  });

  String? userId;
  String? referralCode;

  factory AddReferralDataModel.fromMap(Map<String, dynamic> json) => AddReferralDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    referralCode: json["referral_code"] == null ? null : json["referral_code"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
    "referral_code": referralCode == null ? null : referralCode,
  };
}
