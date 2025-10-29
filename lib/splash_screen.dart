import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 280,
              width: 280,
              child: Lottie.asset('assets/animation/driving.json',
                  fit: BoxFit.contain),
            ),
            SizedBox(height: 20),
            Text(
              'Vehicle Repair',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.blue[700]),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 160,
              child: LinearProgressIndicator(minHeight: 4),
            )
          ],
        ),
      ),
    );
  }
}
