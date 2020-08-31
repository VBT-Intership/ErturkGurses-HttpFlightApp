class FlightModel {
  AKN21 aKN21;

  FlightModel({this.aKN21});

  FlightModel.fromJson(Map<String, dynamic> json) {
    aKN21 = json['AKN21'] != null ? new AKN21.fromJson(json['AKN21']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.aKN21 != null) {
      data['AKN21'] = this.aKN21.toJson();
    }
    return data;
  }
}

class AKN21 {
  String date;
  int flightDuration;
  String flightTime;
  String fromWhere;
  String toWhere;

  AKN21(
      {this.date,
      this.flightDuration,
      this.flightTime,
      this.fromWhere,
      this.toWhere});

  AKN21.fromJson(Map<String, dynamic> json) {
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