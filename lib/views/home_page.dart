import 'package:flutter/material.dart';
import 'package:ticket_app/components/flight_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.only(right: 20, left: 20),
          itemExtent: MediaQuery.of(context).size.height / 5,
          itemCount: 5,
          itemBuilder: (context, index) {
            return FlightCard();
          }),
    );
  }
}
