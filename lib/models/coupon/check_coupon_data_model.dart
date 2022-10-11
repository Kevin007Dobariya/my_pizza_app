import 'dart:convert';

CheckCouponDataModel checkCouponDataModelFromMap(String str) => CheckCouponDataModel.fromMap(json.decode(str));

String checkCouponDataModelToMap(CheckCouponDataModel data) => json.encode(data.toMap());

class CheckCouponDataModel {
  CheckCouponDataModel({
    this.couponCode,
    this.items,
  });

  String? couponCode;
  List<Item>? items;

  factory CheckCouponDataModel.fromMap(Map<String, dynamic> json) => CheckCouponDataModel(
    couponCode: json["coupon_code"] == null ? null : json["coupon_code"],
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "coupon_code": couponCode == null ? null : couponCode,
    "items": items == null ? null : List<dynamic>.from(items!.map((x) => x.toMap())),
  };
}

class Item {
  Item({
    this.quantity,
    this.itemParams,
    this.itemId,
    this.itemCategoryId,
    this.price,
  });

  int? quantity;
  dynamic itemParams;
  String? itemId;
  String? itemCategoryId;
  String? price;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
    quantity: json["quantity"] == null ? null : json["quantity"],
    itemParams: json["item_params"],
    itemId: json["item_id"] == null ? null : json["item_id"],
    itemCategoryId: json["item_category_id"] == null ? null : json["item_category_id"],
    price: json["price"] == null ? null : json["price"],
  );

  Map<String, dynamic> toMap() => {
    "quantity": quantity == null ? null : quantity,
    "item_params": itemParams,
    "item_id": itemId == null ? null : itemId,
    "item_category_id": itemCategoryId == null ? null : itemCategoryId,
    "price": price == null ? null : price,
  };
}

class ItemParam {
  ItemParam({
    this.id,
    this.itemCategoryId,
    this.name,
    this.price,
  });

  String? id;
  String? itemCategoryId;
  String? name;
  String? price;

  factory ItemParam.fromMap(Map<String, dynamic> json) => ItemParam(
    id: json["id"] == null ? null : json["id"],
    itemCategoryId: json["item_category_id"] == null ? null : json["item_category_id"],
    name: json["name"] == null ? null : json["name"],
    price: json["price"] == null ? null : json["price"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "item_category_id": itemCategoryId == null ? null : itemCategoryId,
    "name": name == null ? null : name,
    "price": price == null ? null : price,
  };
}
