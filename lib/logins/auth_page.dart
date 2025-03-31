import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/logins/login_screen.dart';
import 'package:flutter_application_1/map_screen.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key, required String userName});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            // Navigate to MapScreen if user is logged in
            Future.delayed(Duration.zero, () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MapScreen(selectedVehicle: 'car', userName: 'user',)),
              );
            });
            return const Center(child: CircularProgressIndicator());
          } else {
            return const LoginScreen(userName: 'user');
          }
        },
      ),
    );
  }
}
