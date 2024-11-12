// import 'package:bloc/bloc.dart';
// import 'package:permission_handler/permission_handler.dart';

// part 'location_pernission_state.dart';

// class LocationPermissionCubit extends Cubit<LocationPermissionState> {
//   LocationPermissionCubit() : super(LocationPernissionInitial());

//   getPermissionStatus() async {
//     // emit(LocationPermissionLoading());
//     PermissionStatus status = await Permission.location.status;
//     handlePermissionStatus(status);
//   }

//   givePermission() async {
//     final status = await Permission.location.request();
//     if (status.isGranted) {
//       emit(LocationPermissionGranted());
//     }
//   }

//   handlePermissionStatus(PermissionStatus status) {
//     if (status.isGranted) {
//       emit(LocationPermissionGranted());
//     } else if (status.isDenied) {
//       emit(LocationPermissionDenied(
//           message: "Please enable location permission"));
//     } else if (status.isPermanentlyDenied) {
//       emit(LocationPermissionForverDenied(
//           message: "Please enable location permission from settings"));
//     } else if (status.isRestricted) {
//       emit(LocationPermissionRestricted(
//           message:
//               "Location permission is restricted some features may not work"));
//     } else if (status.isLimited) {
//       emit(LocationPermissionLimited(
//           message:
//               "Location permission is limited some features may not work"));
//     }
//   }

//   openAppSettings() async {
//     await openAppSettings();
//   }
// }
