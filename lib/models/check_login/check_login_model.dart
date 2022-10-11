import 'dart:convert';

CheckLoginModel checkLoginModelFromMap(String str) => CheckLoginModel.fromMap(json.decode(str));

String checkLoginModelToMap(CheckLoginModel data) => json.encode(data.toMap());

class CheckLoginModel {
  CheckLoginModel({
    this.status,
    this.msg,
    this.data,
  });

  int? status;
  String? msg;
  Data? data;

  factory CheckLoginModel.fromMap(Map<String, dynamic> json) => CheckLoginModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "data": data == null ? null : data!.toMap(),
  };
}

class Data {
  Data({
    this.id,
    this.userId,
    this.name,
    this.lname,
    this.username,
    this.mobile,
    this.dob,
    this.gender,
    this.isActive,
    this.isVerify,
    this.isNotification,
    this.remarks,
    this.lat,
    this.lang,
    this.city,
    this.state,
    this.locationJson,
    this.deviceType,
    this.totalOnline,
    this.totalOffline,
    this.totalOrder,
    this.orderCount,
    this.usedCoupon,
    this.totalPoint,
    this.creditPoint,
    this.redeemPoint,
    this.referralPoint,
    this.referralPendingPoint,
    this.isReferralRedeem,
    this.profileIcon,
  });

  String? id;
  dynamic userId;
  String? name;
  String? lname;
  String? username;
  String? mobile;
  DateTime? dob;
  String? gender;
  String? isActive;
  String? isVerify;
  String? isNotification;
  dynamic remarks;
  String? lat;
  String? lang;
  String? city;
  String? state;
  String? locationJson;
  String? deviceType;
  String? totalOnline;
  String? totalOffline;
  String? totalOrder;
  String? orderCount;
  dynamic usedCoupon;
  String? totalPoint;
  String? creditPoint;
  String? redeemPoint;
  String? referralPoint;
  String? referralPendingPoint;
  String? isReferralRedeem;
  String? profileIcon;

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    id: json["id"] == null ? null : json["id"],
    userId: json["user_id"],
    name: json["name"] == null ? null : json["name"],
    lname: json["lname"] == null ? null : json["lname"],
    username: json["username"] == null ? null : json["username"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
    gender: json["gender"] == null ? null : json["gender"],
    isActive: json["is_active"] == null ? null : json["is_active"],
    isVerify: json["is_verify"] == null ? null : json["is_verify"],
    isNotification: json["is_notification"] == null ? null : json["is_notification"],
    remarks: json["remarks"],
    lat: json["lat"] == null ? null : json["lat"],
    lang: json["lang"] == null ? null : json["lang"],
    city: json["city"] == null ? null : json["city"],
    state: json["state"] == null ? null : json["state"],
    locationJson: json["location_json"] == null ? null : json["location_json"],
    deviceType: json["device_type"] == null ? null : json["device_type"],
    totalOnline: json["total_online"] == null ? null : json["total_online"],
    totalOffline: json["total_offline"] == null ? null : json["total_offline"],
    totalOrder: json["total_order"] == null ? null : json["total_order"],
    orderCount: json["order_count"] == null ? null : json["order_count"],
    usedCoupon: json["used_coupon"],
    totalPoint: json["total_point"] == null ? null : json["total_point"],
    creditPoint: json["credit_point"] == null ? null : json["credit_point"],
    redeemPoint: json["redeem_point"] == null ? null : json["redeem_point"],
    referralPoint: json["referral_point"] == null ? null : json["referral_point"],
    referralPendingPoint: json["referral_pending_point"] == null ? null : json["referral_pending_point"],
    isReferralRedeem: json["is_referral_redeem"] == null ? null : json["is_referral_redeem"],
    profileIcon: json["profile_icon"] == null ? null : json["profile_icon"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "user_id": userId,
    "name": name == null ? null : name,
    "lname": lname == null ? null : lname,
    "username": username == null ? null : username,
    "mobile": mobile == null ? null : mobile,
    "dob": dob == null ? null : "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
    "gender": gender == null ? null : gender,
    "is_active": isActive == null ? null : isActive,
    "is_verify": isVerify == null ? null : isVerify,
    "is_notification": isNotification == null ? null : isNotification,
    "remarks": remarks,
    "lat": lat == null ? null : lat,
    "lang": lang == null ? null : lang,
    "city": city == null ? null : city,
    "state": state == null ? null : state,
    "location_json": locationJson == null ? null : locationJson,
    "device_type": deviceType == null ? null : deviceType,
    "total_online": totalOnline == null ? null : totalOnline,
    "total_offline": totalOffline == null ? null : totalOffline,
    "total_order": totalOrder == null ? null : totalOrder,
    "order_count": orderCount == null ? null : orderCount,
    "used_coupon": usedCoupon,
    "total_point": totalPoint == null ? null : totalPoint,
    "credit_point": creditPoint == null ? null : creditPoint,
    "redeem_point": redeemPoint == null ? null : redeemPoint,
    "referral_point": referralPoint == null ? null : referralPoint,
    "referral_pending_point": referralPendingPoint == null ? null : referralPendingPoint,
    "is_referral_redeem": isReferralRedeem == null ? null : isReferralRedeem,
    "profile_icon": profileIcon == null ? null : profileIcon,
  };
}
