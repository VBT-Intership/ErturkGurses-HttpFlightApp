import 'package:ticket_app/model/flight_model.dart';

abstract class IHttpFlightService {
  Future<List<FlightModel>> getFlightList();
  Future<void> deleteFlight(int index);
}
