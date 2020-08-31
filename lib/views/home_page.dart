import 'package:flutter/material.dart';
import 'package:ticket_app/components/flight_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(right: 20, left: 20),
        itemExtent: MediaQuery.of(context).size.height / 5,
        itemCount: 5,
        itemBuilder: (context, index) {
          return FlightCard();
        });
  }
}
