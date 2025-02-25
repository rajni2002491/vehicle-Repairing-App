import 'package:flutter/material.dart';
import 'shope_dashbord.dart';

class ServiceRequestScreen extends StatefulWidget {
  @override
  _ServiceRequestScreenState createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  TextEditingController _problemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Describe Your Issue")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Describe your problem", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextField(
              controller: _problemController,
              maxLines: 4,
              decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Example: Engine not starting"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Send request
                 Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShopkeeperDashboard()),
                          );
              },
              child: Text("Send Request"),
            )
          ],
        ),
      ),
    );
  }
}
