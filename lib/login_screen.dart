import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_application_1/vehicle_screen.dart';
import 'register_screen.dart';
import 'Forgot_pass_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Your Title'),
        leading: CupertinoButton(
          child: Icon(CupertinoIcons.back),
          onPressed: () {
            // Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
            child: Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 80), // Spacing
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
            child: Text(
              'Email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
            child: Text(
              'Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
          ),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerRight, // Aligns text to the right
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen()),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                )),
          ),
          Center(
            child: SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            VehicleScreen(userName: 'Rajnikant')),
                  );
                  // Handle signup logic
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
                child: Text(
              '-----------Or Register with-----------',
              style: TextStyle(fontSize: 15),
            )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    // Handle Google signup logic
                  },
                  label: Image.asset('assets/google-logo.png', height: 29),
                ),
                SizedBox(width: 30),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: Image.asset('assets/Facebook-logo.png', height: 27),
                ),
                SizedBox(width: 30),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: Image.asset('assets/apple-logo.jpg', height: 34),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: RichText(
                text: TextSpan(
                  text: 'Dont have an account? ',
                  style: TextStyle(
                      fontSize: 15, color: Colors.black), // Normal text
                  children: [
                    TextSpan(
                      text: 'Register',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold), // Styled as a link
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate to login screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
