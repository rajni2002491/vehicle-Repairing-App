import 'package:flutter/material.dart';
import 'package:flutter_application_1/logins/login_screen.dart';
import 'package:flutter_application_1/map_screen.dart';

class VehicleScreen extends StatefulWidget {
  final String userName;

  const VehicleScreen(
      {super.key, required this.userName, required String selectedVehicle});

  @override
  VehicleScreenState createState() => VehicleScreenState();
}

class VehicleScreenState extends State<VehicleScreen> {
  String _selectedVehicle = "Bike"; // Default selection

  final List<Map<String, dynamic>> vehicles = [
    {"name": "Bike", "icon": Icons.motorcycle},
    {"name": "Scooty", "icon": Icons.electric_scooter},
    {"name": "Car", "icon": Icons.directions_car},
    {"name": "Truck", "icon": Icons.local_shipping},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen(userName: 'user')),
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text with Heart Icon
            Row(
              children: [
                Text(
                  'Welcome, ${widget.userName}! ',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.favorite, color: Colors.red, size: 28),
              ],
            ),
            SizedBox(height: 20),

            // Vehicle Selection Title
            Text(
              "Choose Your Vehicle:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Radio Button List for Vehicle Selection
            Column(
              children: vehicles.map((vehicle) {
                return RadioListTile(
                  title: Row(
                    children: [
                      Icon(vehicle["icon"], size: 30, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(vehicle["name"], style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  value: vehicle["name"],
                  groupValue: _selectedVehicle,
                  onChanged: (value) {
                    setState(() {
                      _selectedVehicle = value.toString();
                    });
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 30),

            // Confirm Selection Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                  // ✅ Pass `userName` & `selectedVehicle` to `MapScreen`
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapScreen(
                        selectedVehicle: _selectedVehicle,
                        userName: widget.userName,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Confirm Selection",
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
