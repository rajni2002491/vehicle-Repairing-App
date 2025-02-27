import 'package:flutter/material.dart';
import 'setpass_screen.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Increased padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // Add padding
              child: Text(
                'Check your email',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Aligns text within the Text widget
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Enter the five-digit code',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: List.generate(
                5, 
                (index) => SizedBox(
                  width: 50,
                  height: 50,
                  child: TextField(
                    textAlign: TextAlign.center, 
                    keyboardType: TextInputType.number, 
                    maxLength: 1, 
                    decoration: InputDecoration(
                      border: OutlineInputBorder(), 
                      counterText: "",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SetPassword (),
                      ),
                    );
                },
                child: Text(
                  "Verify Code",
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
