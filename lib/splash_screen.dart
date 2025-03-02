import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Auto navigate after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Light background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Repair.jpg', // Ensure this image is added to assets folder
              height: 250,
            ),
            Text(
              "QuickFix - Vehicle Repair",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Better visibility
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Fast, Reliable, and Nearby Repair Shops",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            CircularProgressIndicator(color: Colors.orangeAccent), // Loading effect
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
