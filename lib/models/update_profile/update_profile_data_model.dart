import 'dart:convert';

UpdateProfileDataModel updateProfileDataModelFromMap(String str) => UpdateProfileDataModel.fromMap(json.decode(str));

String updateProfileDataModelToMap(UpdateProfileDataModel data) => json.encode(data.toMap());

class UpdateProfileDataModel {
  UpdateProfileDataModel({
    this.userId,
    this.name,
    this.token,
    this.lname,
    this.username,
    this.dob,
    this.gender,
    this.lat,
    this.lang,
    this.city,
    this.state,
    this.locationJson,
  });

  String? userId;
  String? name;
  String? token;
  String? lname;
  String? username;
  String? dob;
  int? gender;
  String? lat;
  String? lang;
  String? city;
  String? state;
  String? locationJson;

  factory UpdateProfileDataModel.fromMap(Map<String, dynamic> json) => UpdateProfileDataModel(
    userId: json["user_id"] == null ? null : json["user_id"],
    name: json["name"] == null ? null : json["name"],
    token: json["token"] == null ? null : json["token"],
    lname: json["lname"] == null ? null : json["lname"],
    username: json["username"] == null ? null : json["username"],
    dob: json["dob"] == null ? null : json["dob"],
    gender: json["gender"] == null ? null : json["gender"],
    lat: json["lat"] == null ? null : json["lat"],
    lang: json["lang"] == null ? null : json["lang"],
    city: json["city"] == null ? null : json["city"],
    state: json["state"] == null ? null : json["state"],
    locationJson: json["location_json"] == null ? null : json["location_json"],
  );

  Map<String, dynamic> toMap() => {
    "user_id": userId == null ? null : userId,
    "name": name == null ? null : name,
    "token": token == null ? null : token,
    "lname": lname == null ? null : lname,
    "username": username == null ? null : username,
    "dob": dob == null ? null : dob,
    "gender": gender == null ? null : gender,
    "lat": lat == null ? null : lat,
    "lang": lang == null ? null : lang,
    "city": city == null ? null : city,
    "state": state == null ? null : state,
    "location_json": locationJson == null ? null : locationJson,
  };
}
