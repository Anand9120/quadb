class Schedule {
  Schedule({
      this.time, 
      this.days,});

  Schedule.fromJson(dynamic json) {
    time = json['time'];
    days = json['days'] != null ? json['days'].cast<String>() : [];
  }
  String? time;
  List<String>? days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['days'] = days;
    return map;
  }

}