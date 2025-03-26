import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_covertor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: MaterialHomePage(), // Updated to use the correct class name
    );
  }
}
