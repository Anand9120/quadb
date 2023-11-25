class Rating {
  Rating({
      this.average,});

  Rating.fromJson(dynamic json) {
    average = json['average'];
  }
  double? average;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average'] = average;
    return map;
  }

}