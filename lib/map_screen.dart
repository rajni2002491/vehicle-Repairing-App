import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'bokking_system.dart';

class MapScreen extends StatefulWidget {
  final String selectedVehicle;
  MapScreen({this.selectedVehicle = 'defaultVehicle'});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController _mapController;

  // Hardcoded list of nearby repair shops
  final List<Map<String, dynamic>> _repairShops = [
    {
      'name': 'AutoFix Garage',
      'position': LatLng(20.2968, 85.8240),
    },
    {
      'name': 'Speedy Service Station',
      'position': LatLng(20.2985, 85.8265),
    },
    {
      'name': 'Smart Auto Repairs',
      'position': LatLng(20.2998, 85.8222),
    },
    {
      'name': 'Mechanic Pro Workshop',
      'position': LatLng(20.2950, 85.8205),
    },
  ];

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
    Set<Marker> markers = {
      // Add center marker
      Marker(
        markerId: MarkerId('center'),
        position: LatLng(20.2961, 85.8245),
        infoWindow: InfoWindow(title: 'Your Location'),
      ),
      // Add repair shop markers
      ..._repairShops.map(
        (shop) => Marker(
          markerId: MarkerId(shop['name']),
          position: shop['position'],
          infoWindow: InfoWindow(
            title: shop['name'],
            onTap: () {
              // Navigate to RepairShopsScreen when marker tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RepairShopsScreen(
                    shopName: shop['name'],
                  ),
                ),
              );
            },
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        ),
      ),
    };

    return Scaffold(
      appBar: AppBar(title: Text('Nearby Repair Shops')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Vehicle image card
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                getVehicleImage(widget.selectedVehicle),
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 12),
            // Google Map
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200],
                ),
                clipBehavior: Clip.antiAlias,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: LatLng(20.2961, 85.8245),
                    zoom: 14,
                  ),
                  mapType: MapType.normal,
                  onMapCreated: (controller) => _mapController = controller,
                  myLocationEnabled: false,
                  zoomControlsEnabled: true,
                  markers: markers,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
