import 'package:flutter/material.dart';
import 'package:ticket_app/configs/constants.dart';
import 'package:ticket_app/model/flight_model.dart';
import 'package:ticket_app/service/HttpFlightService.dart';
import 'package:ticket_app/views/home_page.dart';

abstract class HomePageViewModel extends State<HomePage> {
  bool isLoading = true;
  List<FlightModel> flightList;

  List<FlightModel> httpFlights;
  String baseUrl = Constants.baseUrl;
  HttpFlightService flightService = HttpFlightService();
  void init() async {
    flightList = await flightService.getFlightList();
    changeLoading();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void checkErrorList() {
    if (httpFlights.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Text(".statusCode.toString()"),
        ),
      );
    }
  }

  void changeLoading() {
    setState(() {
      print(isLoading);
      isLoading = !isLoading;
    });
  }
}
