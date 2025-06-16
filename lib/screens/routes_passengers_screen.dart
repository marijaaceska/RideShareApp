import 'package:flutter/material.dart';
// <<<<<<< adding-google-auth
// import 'package:emk/models/route_passenger_model.dart';
// import '../screens/profile_screen.dart';
// =======
// import 'package:ride_share/models/route_passenger_model.dart';
// import '../widgets/app_menu.dart';
// >>>>>>> main
import '../widgets/passenger_route_card.dart';

class RoutesPassengersScreen extends StatelessWidget {
  final List<RoutePassengerModel> activeRoutes = [
    RoutePassengerModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '07:00 AM', passenger: 'passenger1'),
    RoutePassengerModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '06:00 PM', passenger: 'passenger2'),
    RoutePassengerModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '02:30 PM', passenger: 'passenger3'),
    RoutePassengerModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '11:00 AM', passenger: 'passenger4'),
    RoutePassengerModel(from: 'City1', to: 'City2', date: '12/01/2025', time: '12:00 PM', passenger: 'passenger5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              title: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Requested routes",
                  style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold, color: Color(0xFF1F1047)),
                ),
              ),
              backgroundColor: Colors.white,
              centerTitle: true,
              floating: false,
              pinned: false,
              leading: Padding(
                padding: EdgeInsets.only(top: 24, left: 10),
                // child: IconButton(
                //   icon: Icon(Icons.arrow_back_ios_new, color: Color(0xFF1F1047)),
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 10),
                  child: AppMenu(),
                  // child: IconButton(
                  //   icon: Icon(Icons.person, color: Color(0xFF1F1047), size: 30),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, '/profile');
                  //   },
                  // ),
                ),
              ],
            ),
          ];
        },
        body: Scrollbar(
          thickness: 6,
          radius: Radius.circular(10),
          thumbVisibility: true,
          child: ScrollbarTheme(
            data: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              itemCount: activeRoutes.length,
              itemBuilder: (context, index) {
                return PassengerRouteCard(route: activeRoutes[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}
