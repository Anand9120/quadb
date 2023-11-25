import 'Schedule.dart';
import 'Rating.dart';
import 'Network.dart';
import 'Externals.dart';
import 'Image.dart';
import 'Links.dart';

class Show {
  Show({
      this.id, 
      this.url, 
      this.name, 
      this.type, 
      this.language, 
      this.genres, 
      this.status, 
      this.runtime, 
      this.averageRuntime, 
      this.premiered, 
      this.ended, 
      this.officialSite, 
      this.schedule, 
      this.rating, 
      this.weight, 
      this.network, 
      this.webChannel, 
      this.dvdCountry, 
      this.externals, 
      this.image, 
      this.summary, 
      this.updated, 
      this.links,});

  Show.fromJson(dynamic json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
    language = json['language'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    status = json['status'];
    runtime = json['runtime'];
    averageRuntime = json['averageRuntime'];
    premiered = json['premiered'];
    ended = json['ended'];
    officialSite = json['officialSite'];
    schedule = json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null;
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    weight = json['weight'];
    network = json['network'] != null ? Network.fromJson(json['network']) : null;
    webChannel = json['webChannel'];
    dvdCountry = json['dvdCountry'];
    externals = json['externals'] != null ? Externals.fromJson(json['externals']) : null;
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    summary = json['summary'];
    updated = json['updated'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }
  int? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  int? runtime;
  int? averageRuntime;
  String? premiered;
  String? ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  int? weight;
  Network? network;
  dynamic webChannel;
  dynamic dvdCountry;
  Externals? externals;
  Image? image;
  String? summary;
  int? updated;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['url'] = url;
    map['name'] = name;
    map['type'] = type;
    map['language'] = language;
    map['genres'] = genres;
    map['status'] = status;
    map['runtime'] = runtime;
    map['averageRuntime'] = averageRuntime;
    map['premiered'] = premiered;
    map['ended'] = ended;
    map['officialSite'] = officialSite;
    if (schedule != null) {
      map['schedule'] = schedule?.toJson();
    }
    if (rating != null) {
      map['rating'] = rating?.toJson();
    }
    map['weight'] = weight;
    if (network != null) {
      map['network'] = network?.toJson();
    }
    map['webChannel'] = webChannel;
    map['dvdCountry'] = dvdCountry;
    if (externals != null) {
      map['externals'] = externals?.toJson();
    }
    if (image != null) {
      map['image'] = image?.toJson();
    }
    map['summary'] = summary;
    map['updated'] = updated;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }

}