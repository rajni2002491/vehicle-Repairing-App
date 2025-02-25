import 'package:flutter/material.dart';
import 'user_form.dart';

class RepairShopsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> shops = [
    {
      "name": "AutoFix Garage",
      "distance": "1.2 km",
      "rating": "4.5",
      "responseTime": "15 min"
    },
    {
      "name": "Speedy Repairs",
      "distance": "2.5 km",
      "rating": "4.3",
      "responseTime": "20 min"
    },
    {
      "name": "Quick Auto Care",
      "distance": "3.0 km",
      "rating": "4.7",
      "responseTime": "10 min"
    },
    {
      "name": "Rapid Auto Solutions",
      "distance": "1.8 km",
      "rating": "4.6",
      "responseTime": "12 min"
    },
    {
      "name": "Elite Car Repair",
      "distance": "4.1 km",
      "rating": "4.2",
      "responseTime": "25 min"
    },
    {
      "name": "Express Auto Fix",
      "distance": "2.2 km",
      "rating": "4.8",
      "responseTime": "8 min"
    },
    {
      "name": "ProMechanic Hub",
      "distance": "3.5 km",
      "rating": "4.4",
      "responseTime": "18 min"
    },
    {
      "name": "FastTrack Repairs",
      "distance": "5.0 km",
      "rating": "4.0",
      "responseTime": "30 min"
    },
    {
      "name": "Reliable Auto Service",
      "distance": "2.0 km",
      "rating": "4.9",
      "responseTime": "7 min"
    },
    {
      "name": "City Auto Clinic",
      "distance": "3.8 km",
      "rating": "4.1",
      "responseTime": "22 min"
    },
    {
      "name": "Mechanic Masters",
      "distance": "1.5 km",
      "rating": "4.6",
      "responseTime": "14 min"
    },
    {
      "name": "Turbo Tune-Up",
      "distance": "2.9 km",
      "rating": "4.7",
      "responseTime": "9 min"
    },
    {
      "name": "Precision Auto Care",
      "distance": "3.6 km",
      "rating": "4.3",
      "responseTime": "19 min"
    },
    {
      "name": "Speed Masters Garage",
      "distance": "4.3 km",
      "rating": "4.2",
      "responseTime": "21 min"
    },
    {
      "name": "DriveSafe Auto",
      "distance": "1.7 km",
      "rating": "4.5",
      "responseTime": "11 min"
    },
    {
      "name": "Expert Auto Solutions",
      "distance": "2.4 km",
      "rating": "4.8",
      "responseTime": "6 min"
    },
    {
      "name": "QuickFix Motors",
      "distance": "3.2 km",
      "rating": "4.4",
      "responseTime": "16 min"
    },
    {
      "name": "Ultimate Auto Repair",
      "distance": "4.8 km",
      "rating": "4.0",
      "responseTime": "27 min"
    },
    {
      "name": "Superior Auto Garage",
      "distance": "2.1 km",
      "rating": "4.9",
      "responseTime": "5 min"
    },
    {
      "name": "CarFix Pros",
      "distance": "3.9 km",
      "rating": "4.1",
      "responseTime": "23 min"
    },
    {
      "name": "Speedy Wrench",
      "distance": "1.9 km",
      "rating": "4.7",
      "responseTime": "13 min"
    },
    {
      "name": "AllStar Auto Services",
      "distance": "2.7 km",
      "rating": "4.6",
      "responseTime": "12 min"
    },
    {
      "name": "Reliable Roadside",
      "distance": "3.3 km",
      "rating": "4.3",
      "responseTime": "17 min"
    },
    {
      "name": "FastLane Auto",
      "distance": "4.5 km",
      "rating": "4.2",
      "responseTime": "24 min"
    },
    {
      "name": "AutoMasters Garage",
      "distance": "1.6 km",
      "rating": "4.8",
      "responseTime": "7 min"
    },
    {
      "name": "Pit Stop Repairs",
      "distance": "2.8 km",
      "rating": "4.9",
      "responseTime": "5 min"
    },
    {
      "name": "Eco Auto Care",
      "distance": "3.7 km",
      "rating": "4.0",
      "responseTime": "28 min"
    },
    {
      "name": "Urban Auto Works",
      "distance": "5.2 km",
      "rating": "4.1",
      "responseTime": "26 min"
    },
    {
      "name": "Prime Auto Solutions",
      "distance": "1.3 km",
      "rating": "4.5",
      "responseTime": "10 min"
    },
    {
      "name": "Mobile Mechanic Pros",
      "distance": "2.6 km",
      "rating": "4.7",
      "responseTime": "9 min"
    },
    {
      "name": "DriveRight Auto",
      "distance": "3.4 km",
      "rating": "4.3",
      "responseTime": "15 min"
    },
    {
      "name": "Auto Rescue Team",
      "distance": "4.2 km",
      "rating": "4.4",
      "responseTime": "22 min"
    },
    {
      "name": "Car Fixers Hub",
      "distance": "1.4 km",
      "rating": "4.6",
      "responseTime": "12 min"
    },
    {
      "name": "Power Auto Garage",
      "distance": "2.3 km",
      "rating": "4.8",
      "responseTime": "8 min"
    },
    {
      "name": "Performance Auto Care",
      "distance": "3.1 km",
      "rating": "4.5",
      "responseTime": "14 min"
    },
    {
      "name": "Trusted Auto Repair",
      "distance": "4.6 km",
      "rating": "4.0",
      "responseTime": "29 min"
    },
    {
      "name": "Speedy Solutions",
      "distance": "1.1 km",
      "rating": "4.9",
      "responseTime": "6 min"
    },
    {
      "name": "Roadside Mechanics",
      "distance": "3.0 km",
      "rating": "4.2",
      "responseTime": "20 min"
    },
    {
      "name": "QuickWrench Garage",
      "distance": "5.0 km",
      "rating": "4.1",
      "responseTime": "25 min"
    },
  ];

  RepairShopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nearby Repair Shops")),
      body: ListView.builder(
        itemCount: shops.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            elevation: 3,
            child: ListTile(
              title: Text(shops[index]["name"],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(
                  "📍 ${shops[index]["distance"]} | ⭐ ${shops[index]["rating"]} | ⏳ ${shops[index]["responseTime"]}"),
              trailing: ElevatedButton(
                onPressed: () {
                  // Proceed to booking form
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServiceRequestScreen()),
                  );
                },
                child: Text("Select Shop"),
              ),
            ),
          );
        },
      ),
    );
  }
}
