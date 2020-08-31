import 'package:flutter/material.dart';
import 'package:ticket_app/configs/constants.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Row(
          children: [
            buildFlightIcon(),
            buildFlightInfo(context),
            buildAddButton(context)
          ],
        ),
        elevation: 5,
      ),
    );
  }

  Expanded buildFlightIcon() => Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0, right: 10),
        child: Icon(Icons.flight_takeoff, color: Constants.firstColor),
      ));

  Expanded buildFlightInfo(BuildContext context) {
    return Expanded(
        flex: 6,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [buildCityInfo(context), buildTimeInfo(context)],
          ),
        ));
  }

  Row buildCityInfo(BuildContext context) {
    return Row(
      children: [
        Text(
          'İstanbul',
          style: TextStyle(
              color: Constants.secondColor,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height / 35),
        ),
        Icon(Icons.navigate_next),
        Text('Ankara',
            style: TextStyle(
                color: Constants.firstColor,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 35))
      ],
    );
  }

  Expanded buildAddButton(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: IconButton(
          icon: Icon(
            Icons.add_box,
            color: Colors.green,
            size: MediaQuery.of(context).size.height / 20,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Row buildTimeInfo(BuildContext context) {
    return Row(
      children: [
        Text('16:00 ',
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 50)),
        Icon(
          Icons.access_time,
          color: Colors.grey[700],
        ),
        Text(' 20:00',
            style: TextStyle(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height / 50))
      ],
    );
  }
}
