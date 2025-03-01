import 'package:flutter/material.dart';
import 'package:flutter_application_1/bokking_system.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final String selectedVehicle;
  final String userName; // ✅ Accept userName

  const MapScreen({
    super.key,
    required this.selectedVehicle,
    required this.userName,
  });

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  LatLng myCurrentLocation = const LatLng(22.8046, 86.2029);

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
        return 'assets/default_vehicle.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Map Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Welcome Message
            Text(
              "Hello, ${widget.userName}!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            // Vehicle Display with Image
            Text(
              "Your Selected Vehicle: ${widget.selectedVehicle}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  getVehicleImage(widget.selectedVehicle),
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: 10),

            // Search Service Shops Card
            SizedBox(
              height: 50,
              child: Card(
                color: const Color.fromARGB(255, 88, 163, 224),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search Nearest Service Shops',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RepairShopsScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        child: Text(
                          "Find",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 6, 6, 6),
                              fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // Search Location Input Field
            TextField(
              decoration: InputDecoration(
                hintText: "Search location...",
                prefixIcon: Icon(Icons.search, color: Colors.blue),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),

            SizedBox(height: 10),

            // Google Map Widget
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: myCurrentLocation,
                  zoom: 14.5,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId("my_location"),
                    position: myCurrentLocation,
                    draggable: true,
                    onDragEnd: (LatLng newPosition) {
                      setState(() {
                        myCurrentLocation = newPosition;
                      });
                    },
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
