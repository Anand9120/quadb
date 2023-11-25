import 'Country.dart';

class Network {
  Network({
      this.id, 
      this.name, 
      this.country, 
      this.officialSite,});

  Network.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country = json['country'] != null ? Country.fromJson(json['country']) : null;
    officialSite = json['officialSite'];
  }
  int? id;
  String? name;
  Country? country;
  dynamic officialSite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    map['officialSite'] = officialSite;
    return map;
  }

}