import 'package:flutter/material.dart';
import 'package:flutter_application_1/map_screen.dart';

class VehicleScreen extends StatefulWidget {
  final String userName;

  VehicleScreen({required this.userName});

  @override
  _VehicleScreenState createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
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
      appBar: AppBar(title: Text('User Profile')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome, ${widget.userName}! ',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  WidgetSpan(
                    child: Icon(Icons.favorite,
                        color: Colors.red, size: 28), // Heart Icon
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Choose Your Vehicle:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
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
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 117, 225),
                ),
                onPressed: () {
                  if (_selectedVehicle != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapScreen(
                            selectedVehicle: _selectedVehicle),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              "Please select a vehicle before proceeding.")),
                    );
                  }
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
