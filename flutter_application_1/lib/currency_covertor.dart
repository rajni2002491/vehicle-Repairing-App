import 'package:flutter/material.dart';

class MaterialHomePage extends StatelessWidget {
  const MaterialHomePage({super.key}); // Fixed the semicolon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(247, 137, 223, 225),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Rajnikant',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: InputDecoration(
                    hintText: "Enter ther Amount in USD",
                    hintStyle: TextStyle(
                      color: const Color.fromARGB(255, 170, 165, 165),
                    ),
                    prefix: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: const Color.fromARGB(255, 170, 165, 165),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          style: BorderStyle.solid,
                        ),
                        //borderRadius: BorderRadius.all(
                          //Radius.circular(10),
                        ))),
              //),
            ],
          ),
        ));
  }
}
