import 'dart:convert';

SplashDashboardModel splashDashboardModelFromMap(String str) => SplashDashboardModel.fromMap(json.decode(str));

String splashDashboardModelToMap(SplashDashboardModel data) => json.encode(data.toMap());

class SplashDashboardModel {
  SplashDashboardModel({
    this.status,
    this.msg,
    this.storeList,
    this.configData,
    this.itemCategory,
    this.addon,
    this.homeMainBanner,
  });

  int? status;
  String? msg;
  List<StoreList>? storeList;
  ConfigData? configData;
  List<ItemCategory>? itemCategory;
  List<Addon>? addon;
  String? homeMainBanner;

  factory SplashDashboardModel.fromMap(Map<String, dynamic> json) => SplashDashboardModel(
    status: json["status"] == null ? null : json["status"],
    msg: json["msg"] == null ? null : json["msg"],
    storeList: json["store_list"] == null ? null : List<StoreList>.from(json["store_list"].map((x) => StoreList.fromMap(x))),
    configData: json["config_data"] == null ? null : ConfigData.fromMap(json["config_data"]),
    itemCategory: json["item_category"] == null ? null : List<ItemCategory>.from(json["item_category"].map((x) => ItemCategory.fromMap(x))),
    addon: json["addon"] == null ? null : List<Addon>.from(json["addon"].map((x) => Addon.fromMap(x))),
    homeMainBanner: json["home_main_banner"] == null ? null : json["home_main_banner"],
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "msg": msg == null ? null : msg,
    "store_list": storeList == null ? null : List<dynamic>.from(storeList!.map((x) => x.toMap())),
    "config_data": configData == null ? null : configData!.toMap(),
    "item_category": itemCategory == null ? null : List<dynamic>.from(itemCategory!.map((x) => x.toMap())),
    "addon": addon == null ? null : List<dynamic>.from(addon!.map((x) => x.toMap())),
    "home_main_banner": homeMainBanner == null ? null : homeMainBanner,
  };
}

class Addon {
  Addon({
    this.id,
    this.itemCategoryId,
    this.name,
    this.price,
  });

  String? id;
  String? itemCategoryId;
  String? name;
  String? price;

  factory Addon.fromMap(Map<String, dynamic> json) => Addon(
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

class ConfigData {
  ConfigData({
    this.helpEmail,
    this.helpMobile,
    this.versionCode1,
    this.termAndConditionLink,
    this.privacyPolicyLink,
    this.appShareMessage,
    this.aboutUsLink,
    this.contactUsMessage,
    this.updateAppUrl,
    this.gst,
    this.versionCode2,
  });

  String? helpEmail;
  String? helpMobile;
  String? versionCode1;
  String? termAndConditionLink;
  String? privacyPolicyLink;
  String? appShareMessage;
  String? aboutUsLink;
  String? contactUsMessage;
  String? updateAppUrl;
  String? gst;
  String? versionCode2;

  factory ConfigData.fromMap(Map<String, dynamic> json) => ConfigData(
    helpEmail: json["help_email"] == null ? null : json["help_email"],
    helpMobile: json["help_mobile"] == null ? null : json["help_mobile"],
    versionCode1: json["version_code1"] == null ? null : json["version_code1"],
    termAndConditionLink: json["term_and_condition_link"] == null ? null : json["term_and_condition_link"],
    privacyPolicyLink: json["privacy_policy_link"] == null ? null : json["privacy_policy_link"],
    appShareMessage: json["app_share_message"] == null ? null : json["app_share_message"],
    aboutUsLink: json["about_us_link"] == null ? null : json["about_us_link"],
    contactUsMessage: json["contact_us_message"] == null ? null : json["contact_us_message"],
    updateAppUrl: json["update_app_url"] == null ? null : json["update_app_url"],
    gst: json["gst"] == null ? null : json["gst"],
    versionCode2: json["version_code2"] == null ? null : json["version_code2"],
  );

  Map<String, dynamic> toMap() => {
    "help_email": helpEmail == null ? null : helpEmail,
    "help_mobile": helpMobile == null ? null : helpMobile,
    "version_code1": versionCode1 == null ? null : versionCode1,
    "term_and_condition_link": termAndConditionLink == null ? null : termAndConditionLink,
    "privacy_policy_link": privacyPolicyLink == null ? null : privacyPolicyLink,
    "app_share_message": appShareMessage == null ? null : appShareMessage,
    "about_us_link": aboutUsLink == null ? null : aboutUsLink,
    "contact_us_message": contactUsMessage == null ? null : contactUsMessage,
    "update_app_url": updateAppUrl == null ? null : updateAppUrl,
    "gst": gst == null ? null : gst,
    "version_code2": versionCode2 == null ? null : versionCode2,
  };
}

class ItemCategory {
  ItemCategory({
    this.id,
    this.name,
    this.icon,
    this.items,
  });

  String? id;
  String? name;
  String? icon;
  List<Map<String, String>>? items;

  factory ItemCategory.fromMap(Map<String, dynamic> json) => ItemCategory(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    icon: json["icon"] == null ? null : json["icon"],
    items: json["items"] == null ? null : List<Map<String, String>>.from(json["items"].map((x) => Map.from(x).map((k, v) => MapEntry<String, String>(k, v == null ? null : v)))),
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "icon": icon == null ? null : icon,
    "items": items == null ? null : List<dynamic>.from(items!.map((x) => Map.from(x).map((k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
  };
}

class StoreList {
  StoreList({
    this.id,
    this.name,
    this.address,
  });

  String? id;
  String? name;
  String? address;

  factory StoreList.fromMap(Map<String, dynamic> json) => StoreList(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    address: json["address"] == null ? null : json["address"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "address": address == null ? null : address,
  };
}
