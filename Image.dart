class Image {
  Image({
      this.medium, 
      this.original,});

  Image.fromJson(dynamic json) {
    medium = json['medium'];
    original = json['original'];
  }
  String? medium;
  String? original;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medium'] = medium;
    map['original'] = original;
    return map;
  }

}