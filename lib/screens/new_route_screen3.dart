import 'package:flutter/material.dart';
import '../widgets/new_route/new_route_screen3_form.dart';

class NewRouteScreen3 extends StatelessWidget {
    final TextEditingController seatsController = TextEditingController(text: '1');
    final TextEditingController fareController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height / 5.5),
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: CustomCurveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 5.5,
                child: Image.asset(
                  'assets/background.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height -
                  (MediaQuery.of(context).size.height / 5.5)-40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: NewRouteScreen3Form(
                    seatsController: seatsController,
                    fareController: fareController,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);

    path.quadraticBezierTo(
      size.width * 0.2, size.height * 0.55,
      size.width * 0.5, size.height * 0.6,
    );

    path.quadraticBezierTo(
      size.width * 0.8, size.height * 0.65,
      size.width, size.height * 0.5,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
