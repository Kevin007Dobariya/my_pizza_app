import 'dart:convert';

SignUpDataModel signUpDataModelFromMap(String str) => SignUpDataModel.fromMap(json.decode(str));

String signUpDataModelToMap(SignUpDataModel data) => json.encode(data.toMap());

class SignUpDataModel {
  SignUpDataModel({
    this.name,
    this.mobile,
    this.lname,
    this.token,
    this.username,
    this.dob,
    this.gender,
    this.lat,
    this.lang,
    this.city,
    this.state,
    this.locationJson,
  });

  String? name;
  String? mobile;
  String? lname;
  String? token;
  String? username;
  String? dob;
  int? gender;
  String? lat;
  String? lang;
  String? city;
  String? state;
  String? locationJson;

  factory SignUpDataModel.fromMap(Map<String, dynamic> json) => SignUpDataModel(
    name: json["name"] == null ? null : json["name"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    lname: json["lname"] == null ? null : json["lname"],
    token: json["token"] == null ? null : json["token"],
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
    "name": name == null ? null : name,
    "mobile": mobile == null ? null : mobile,
    "lname": lname == null ? null : lname,
    "token": token == null ? null : token,
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
