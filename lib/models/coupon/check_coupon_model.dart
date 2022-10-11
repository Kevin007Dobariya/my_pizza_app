import 'dart:convert';

CheckCouponModel checkCouponModelFromMap(String str) => CheckCouponModel.fromMap(json.decode(str));

String checkCouponModelToMap(CheckCouponModel data) => json.encode(data.toMap());

class CheckCouponModel {
  CheckCouponModel({
    this.status,
    this.msg,
    this.couponId,
    this.discountValue,
  });

  int? status;
  String? msg;
  String? couponId;
  int? discountValue;

  factory CheckCouponModel.fromMap(Map<String, dynamic> json) => CheckCouponModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    couponId: json["coupon_id"] == null ? null : json["coupon_id"],
    discountValue: json["discount_value"] == null ? null : json["discount_value"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "coupon_id": couponId == null ? null : couponId,
    "discount_value": discountValue == null ? null : discountValue,
  };
}
