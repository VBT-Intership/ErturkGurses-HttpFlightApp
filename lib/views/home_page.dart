import 'package:flutter/material.dart';
import 'package:ticket_app/components/flight_card.dart';
import 'package:ticket_app/viewModel/home_page_viewModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends HomePageViewModel {
  void deleteFlight(int index) {
    setState(() {
      flightList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? buildProgressIndicator()
        : ListView.builder(
            padding: EdgeInsets.only(right: 20, left: 20),
            itemExtent: MediaQuery.of(context).size.height / 5,
            itemCount: flightList.length,
            itemBuilder: (context, index) {
              return FlightCard(flightList[index],
                  onDelete: () => deleteFlight(index));
            });
  }

  Center buildProgressIndicator() => Center(child: CircularProgressIndicator());
}
