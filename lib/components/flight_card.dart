import 'package:flutter/material.dart';
import 'package:ticket_app/configs/constants.dart';
import 'package:ticket_app/model/flight_model.dart';

class FlightCard extends StatelessWidget {
  const FlightCard(this.flight, {Key key, this.onDelete}) : super(key: key);
  final FlightModel flight;
  final VoidCallback onDelete;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          buildFlightIcon(),
          buildFlightInfo(
            context,
            flight,
          ),
          buildDeleteButton(context)
        ],
      ),
      elevation: 5,
    );
  }

  Expanded buildFlightIcon() => Expanded(
      flex: 2, child: Icon(Icons.flight_takeoff, color: Constants.firstColor));

  Expanded buildFlightInfo(BuildContext context, FlightModel flight) {
    return Expanded(
        flex: 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [buildCityInfo(context, flight), buildTimeInfo(context)],
        ));
  }

  Row buildCityInfo(BuildContext context, FlightModel flight) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          flight.fromWhere,
          style: TextStyle(
              color: Constants.secondColor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height / 35),
        ),
        Icon(Icons.navigate_next),
        Text(flight.toWhere,
            style: TextStyle(
                color: Constants.firstColor,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 35))
      ],
    );
  }

  Row buildTimeInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(flight.flightTime,
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 50)),
        Icon(
          Icons.access_time,
          color: Colors.grey[700],
        ),
        Text(flight.flightDuration.toString(),
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 50))
      ],
    );
  }

  Expanded buildDeleteButton(BuildContext context) {
    return Expanded(
      flex: 2,
      child: IconButton(
        icon: Icon(
          Icons.delete,
          color: Colors.green,
          size: MediaQuery.of(context).size.height / 20,
        ),
        onPressed: this.onDelete,
      ),
    );
  }
}
