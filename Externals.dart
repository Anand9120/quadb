class Externals {
  Externals({
      this.tvrage, 
      this.thetvdb, 
      this.imdb,});

  Externals.fromJson(dynamic json) {
    tvrage = json['tvrage'];
    thetvdb = json['thetvdb'];
    imdb = json['imdb'];
  }
  dynamic tvrage;
  int? thetvdb;
  String? imdb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tvrage'] = tvrage;
    map['thetvdb'] = thetvdb;
    map['imdb'] = imdb;
    return map;
  }

}