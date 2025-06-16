import 'package:flutter/material.dart';
// <<<<<<< adding-google-auth

// import 'package:emk/widgets/route_card_history.dart';
// import '../models/route_model.dart';
// import 'routes_drivers_screen.dart';
// =======
// import 'package:ride_share/screens/profile_screen.dart';
// import 'package:ride_share/widgets/route_card_history.dart';
// import '../models/route_model.dart';
// import '../widgets/app_menu.dart';
// >>>>>>> main

class HistoryScreen extends StatelessWidget {
  final List<RouteModel> historyRoutes = [
    RouteModel(
      from: "City1",
      to: "City2",
      date: "22/01/2024",
      time: "11:00",
      role: "Passenger",
      recommend: "Yes",
    ),
    RouteModel(
      from: "City3",
      to: "City4",
      date: "23/01/2024",
      time: "15:00",
      role: "Driver",
      recommend: "No",
    ),
    RouteModel(
      from: "City3",
      to: "City4",
      date: "25/01/2024",
      time: "18:00",
      role: "Passenger",
      recommend: "Yes",
    ),
    RouteModel(
      from: "City1",
      to: "City3",
      date: "30/01/2024",
      time: "20:00",
      role: "Driver",
      recommend: "Yes",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History of finished routes',
          style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold, color: Color(0xFF1F1047)),
        ),
        backgroundColor: Colors.white70,
        actions: [
          AppMenu(),
        ],
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: historyRoutes.length,
        itemBuilder: (context, index) {
          return RouteHistoryCard(route: historyRoutes[index]);
        },
      ),
    );
  }
}