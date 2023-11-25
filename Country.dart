class Country {
  Country({
      this.name, 
      this.code, 
      this.timezone,});

  Country.fromJson(dynamic json) {
    name = json['name'];
    code = json['code'];
    timezone = json['timezone'];
  }
  String? name;
  String? code;
  String? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    map['timezone'] = timezone;
    return map;
  }

}