import 'package:flutter/material.dart';
import 'package:flutter_application_1/verifyforgotemail.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:
              CrossAxisAlignment.start, // Aligns children to the left
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
              child: Text(
                'Forgot Password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Aligns text within the Text widget
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Please enter your email to reset the password',
                textAlign: TextAlign.left, // Aligns text within the Text widget
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Your Email',
                textAlign: TextAlign.left, // Align text to the left
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailVerification(),
                      ),
                    );
                },
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
