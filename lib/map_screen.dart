import 'package:flutter/material.dart';
import 'bokking_system.dart';

class MapScreen extends StatelessWidget {
  final String selectedVehicle;
  const MapScreen({super.key, this.selectedVehicle = 'defaultVehicle'});

  // Function to get image based on selected vehicle
  String getVehicleImage(String vehicle) {
    switch (vehicle.toLowerCase()) {
      case 'bike':
        return 'assets/bike_logo.png';
      case 'scooty':
        return 'assets/scoty_logo.png';
      case 'car':
        return 'assets/car_logo.png';
      case 'truck':
        return 'assets/truck_logo.png';
      default:
        return 'assets/default_vehicle.png'; // Default image
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Vehicle: $selectedVehicle ',
                            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          WidgetSpan(
                            child: Icon(Icons.favorite, color: Colors.red, size: 28),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      width: double.infinity,
                      color: Colors.blue,
                      child: Image.asset(
                        getVehicleImage(selectedVehicle), // Dynamic image
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 60,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search location...",
                          prefixIcon: Icon(Icons.search, color: Colors.blue),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => RepairShopsScreen()),
                            );
                          },
                          child: Text('Home'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Work'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Saved'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
