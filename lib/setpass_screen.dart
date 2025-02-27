import 'package:flutter/material.dart';
import 'login_screen.dart';

class SetPassword extends StatelessWidget {
  const SetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
              child: Text(
                'Set a new password',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Aligns text within the Text widget
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Create a new password. Ensure it differs from previous ones forsecurity',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 20), // Aligns text within the Text widget
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter a new password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Confirm Password',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Card(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Re-enter password",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                  // Send request
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Submit',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
