part of 'location_pernission_cubit.dart';

sealed class LocationPermissionState {}

final class LocationPernissionInitial extends LocationPermissionState {}

final class LocationPermissionLoading extends LocationPermissionState {}

final class LocationPermissionGranted extends LocationPermissionState {
  LocationPermissionGranted();
}

class LocationPermissionDenied extends LocationPermissionState {
  final String message;
  LocationPermissionDenied({
    required this.message,
  });
}

class LocationPermissionForverDenied extends LocationPermissionState {
  final String message;
  LocationPermissionForverDenied({
    required this.message,
  });
}

class LocationPermissionRestricted extends LocationPermissionState {
  final String message;
  LocationPermissionRestricted({
    required this.message,
  });
}

class LocationPermissionLimited extends LocationPermissionState {
  final String message;
  LocationPermissionLimited({
    required this.message,
  });
}
