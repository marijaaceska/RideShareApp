import 'package:flutter/material.dart';
import 'package:emk/widgets/login/login_password_field.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Welcome back!',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Color(0x001f1047).withValues(alpha: 1.0),
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Please sign in to continue',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0x001F1047).withValues(alpha: 1.0),
          ),
        ),
        SizedBox(height: 70),
        Container(
          decoration: BoxDecoration(
            color: Color(0x00bbbecb).withValues(alpha: 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_rounded, color: Color(0x001F1047).withValues(alpha: 1.0)),
              hintText: 'user@email.com',
              hintStyle: TextStyle(
                fontFamily: 'Lato',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: Color(0x001F1047).withValues(alpha: 1.0),
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            ),
          ),
        ),
        SizedBox(height: 20),
        LoginPasswordField(),
        SizedBox(height: 100),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/routesPassengers');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0x001F1047).withValues(alpha: 1.0),
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28),
            ),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.normal
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(fontFamily: 'Lato',color: Colors.grey[600]),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
