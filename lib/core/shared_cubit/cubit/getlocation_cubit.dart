// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:flutter/foundation.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';

// part 'getlocation_state.dart';

// class GetlocationCubit extends Cubit<GetlocationState> {
//   GetlocationCubit() : super(GetlocationInitial());

//   String address = '';
//   String? lat;
//   String? long;

//   Future<void> getLocation() async {
//     emit(GetlocationLoading());
//     try {
//       // Fetch the current position
//       Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.high);

//       // Set latitude and longitude
//       lat = position.latitude.toString();
//       long = position.longitude.toString();

//       // Fetch the address based on the position
//       address = await getAddressFromLatLng(position);

//       // Emit success once both location and address are fetched
//       emit(GetlocationSuccess(position));
//       log('Address: $address');
//     } catch (e) {
//       emit(GetLocationFailure(message: e.toString()));
//     }
//   }

//   Future<String> getAddressFromLatLng(Position position) async {
//     try {
//       // Fetch the placemark from the coordinates
//       List<Placemark> placemarks = await placemarkFromCoordinates(
//         position.latitude,
//         position.longitude,
//       );
//       Placemark place =
//           placemarks.isNotEmpty ? placemarks[2] : const Placemark();

//       // Construct the address string
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
