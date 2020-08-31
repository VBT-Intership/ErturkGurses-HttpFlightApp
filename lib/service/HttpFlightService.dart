import 'dart:convert';
import 'dart:io';

import 'package:ticket_app/configs/constants.dart';
import 'package:ticket_app/model/flight_model.dart';
import 'package:http/http.dart' as http;
import 'package:ticket_app/service/IHttpFlightService.dart';

class HttpFlightService extends IHttpFlightService {
  @override
  Future<List<FlightModel>> getFlightList() async {
    var url = Constants.baseUrl + "Flights.json";
    var response = await http.get(url);
    List<FlightModel> flightList = List();

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List)
          flightList = jsonBody.map((e) => FlightModel.fromJson(e)).toList();
        break;
      default:
    }
    return flightList;
  }
}
