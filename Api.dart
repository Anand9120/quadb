import 'Show.dart';

class Api {
  Api({
      this.score, 
      this.show,});

  Api.fromJson(dynamic json) {
    score = json['score'];
    show = json['show'] != null ? Show.fromJson(json['show']) : null;
  }
  double score;
  Show show;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['score'] = score;
    if (show != null) {
      map['show'] = show.toJson();
    }
    return map;
  }

}