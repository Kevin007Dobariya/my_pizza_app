import 'dart:convert';

GetReferralDataModel getReferralDataModelFromMap(String str) => GetReferralDataModel.fromMap(json.decode(str));

String getReferralDataModelToMap(GetReferralDataModel data) => json.encode(data.toMap());

class GetReferralDataModel {
  GetReferralDataModel({
    this.userId,
  });

  String? userId;

  factory GetReferralDataModel.fromMap(Map<String, dynamic> json) => GetReferralDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
  };
}
