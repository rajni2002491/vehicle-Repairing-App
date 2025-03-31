import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter_application_1/logins/login_screen.dart';
import 'package:lottie/lottie.dart'; // Import the lottie package
// Import the AuthPage

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
       child: Lottie.asset(
         'assets/animation/Animation - 1742998118287.json',
         height: 800,
         width: 650,
         fit: BoxFit.cover,
         // Correct path to the animation
       ),
      ),
      nextScreen: const LoginScreen( userName: 'user',), // Navigate to AuthPage
      splashTransition: SplashTransition.fadeTransition,
      duration: 3500,
      backgroundColor: Colors.white, // Only one backgroundColor
    );
  }
}
