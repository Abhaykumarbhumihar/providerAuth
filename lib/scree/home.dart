import 'package:flutter/material.dart';
import 'package:provider_auth/scree/login.dart';
import 'package:provider_auth/scree/sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 2.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xffDBB874),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0), // Rounded corners
                  ),
                ),
                child: Text("Login Page")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 2.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xffDBB874),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0), // Rounded corners
                  ),
                ),
                child: Text("Sigin In Page")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  elevation: 2.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: Color(0xffDBB874),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0), // Rounded corners
                  ),
                ),
                child: Text("GetAll User Page")),
          )
        ],
      ),
    );
  }
}
