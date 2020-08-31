class FlightModel {
  String date;
  int flightDuration;
  String flightTime;
  String fromWhere;
  String toWhere;

  FlightModel(
      {this.date,
      this.flightDuration,
      this.flightTime,
      this.fromWhere,
      this.toWhere});

  FlightModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    flightDuration = json['flightDuration'];
    flightTime = json['flightTime'];
    fromWhere = json['fromWhere'];
    toWhere = json['toWhere'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['flightDuration'] = this.flightDuration;
    data['flightTime'] = this.flightTime;
    data['fromWhere'] = this.fromWhere;
    data['toWhere'] = this.toWhere;
    return data;
  }
}