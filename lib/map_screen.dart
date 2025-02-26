import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final String selectedVehicle;
  const MapScreen({super.key, this.selectedVehicle = 'defaultVehicle'});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
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
      appBar: AppBar(title: Text('Map')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Vehicle: ${widget.selectedVehicle} ',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  WidgetSpan(
                    child: Icon(Icons.favorite, color: Colors.red, size: 28),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.blue,
              child: Image.asset(
                getVehicleImage(widget.selectedVehicle),
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: Card(
                color: const Color.fromARGB(255, 88, 163, 224),
                  child: Text(
                '   search Nearest Service Shopes   ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search location...",
                prefixIcon: Icon(Icons.search, color: Colors.blue),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: Expanded(
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: myCurrentLocation,
                    zoom: 14.4746,
                  ),
                  markers: {
                    Marker(
                      markerId: MarkerId("Marker Id"),
                      position: myCurrentLocation,
                      draggable: true,
                      onDragEnd: (value) {},
                    ),
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
