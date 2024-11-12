import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitness/core/error/failure.dart';

Left<Failure, T> dioException<T>(Exception e) {
  if (e is DioException) {
    return Left(RemoteServerFailure.fromDioError(e));
  } else {
    return Left(RemoteServerFailure(e.toString()));
  }
}
