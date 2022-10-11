import 'dart:convert';

ChangePasswordDataModel changePasswordDataModelFromMap(String str) => ChangePasswordDataModel.fromMap(json.decode(str));

String changePasswordDataModelToMap(ChangePasswordDataModel data) => json.encode(data.toMap());

class ChangePasswordDataModel {
  ChangePasswordDataModel({
    this.userId,
    this.oldPassword,
    this.newPassword,
    this.confirmPassword,
  });

  String? userId;
  String? oldPassword;
  String? newPassword;
  String? confirmPassword;

  factory ChangePasswordDataModel.fromMap(Map<String, dynamic> json) => ChangePasswordDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    oldPassword: json["old_password"] == null ? null : json["old_password"],
    newPassword: json["new_password"] == null ? null : json["new_password"],
    confirmPassword: json["confirm_password"] == null ? null : json["confirm_password"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
    "old_password": oldPassword == null ? null : oldPassword,
    "new_password": newPassword == null ? null : newPassword,
    "confirm_password": confirmPassword == null ? null : confirmPassword,
  };
}
