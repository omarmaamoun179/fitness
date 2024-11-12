// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// class LocationService {
//   // Handles the permission and location retrieval
//   static Future<String?> getLocationByAddress(BuildContext context) async {
//     Position? position = await getCurrentLocation(context);
//     if (position != null) {
//       String address = await getAddressFromLatLng(position);
//       log('Address: $address');
//       return address;
//     } else {
//       return null;
//     }
//   }

//   // Fetches the current location after checking for permissions
//   static Future<Position?> getCurrentLocation(BuildContext context) async {
//     bool hasPermission = await _handleLocationPermission(context);
//     if (hasPermission) {
//       try {
//         Position position = await Geolocator.getCurrentPosition(
//           locationSettings: const LocationSettings(
//             accuracy: LocationAccuracy.high,
//           ),
//         );
//         debugPrint('Location: ${position.latitude}, ${position.longitude}');
//         return position;
//       } catch (e) {
//         debugPrint('Error getting location: $e');
//         return null;
//       }
//     }
//     return null;
//   }

//   // Handles location permissions
//   static Future<bool> _handleLocationPermission(BuildContext context) async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Text(
//               'Location services are disabled. Please enable the services')));
//       return false;
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Location permissions are denied')));
//         return false;
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           content: Row(
//         children: [
//           Text(
//               'Location permissions are permanently denied, we cannot request permissions. '),
//         ],
//       )));
//       return false;
//     }

//     return true;
//   }

//   // Converts the Position to an address using the Geocoding API
//   static Future<String> getAddressFromLatLng(Position position) async {
//     try {
//       List<Placemark> placemarks =
//           await placemarkFromCoordinates(position.latitude, position.longitude);
//       Placemark place = placemarks[0];
//       String address =
//           "${place.street}, ${place.locality}, ${place.postalCode}, ${place.country}";
//       debugPrint('Location: $address');
//       return address;
//     } catch (e) {
//       debugPrint('Error getting address: $e');
//       return 'Unknown Location';
//     }
//   }
// }
