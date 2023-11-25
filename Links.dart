import 'Self.dart';
import 'Previousepisode.dart';

class Links {
  Links({
      this.self, 
      this.previousepisode,});

  Links.fromJson(dynamic json) {
    self = json['self'] != null ? Self.fromJson(json['self']) : null;
    previousepisode = json['previousepisode'] != null ? Previousepisode.fromJson(json['previousepisode']) : null;
  }
  Self? self;
  Previousepisode? previousepisode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (self != null) {
      map['self'] = self?.toJson();
    }
    if (previousepisode != null) {
      map['previousepisode'] = previousepisode?.toJson();
    }
    return map;
  }

}