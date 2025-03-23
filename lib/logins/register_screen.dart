import 'package:flutter/material.dart';
import 'package:flutter_application_1/logins/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Register',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Full Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController, 
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController, 
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController, 
                decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController, 
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Confirm Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _usernameController, 
                decoration: InputDecoration(
                  hintText: 'Re Enter your password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                  ),
                  onPressed: () {
                    String username =
                        _usernameController.text; 
                    if (username.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen(userName: username),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please enter a username")),
                      );
                    }
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
