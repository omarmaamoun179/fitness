import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fitness/core/constant/constance.dart';
// import 'package:requests_inspector/requests_inspector.dart';

class DioHelper {
  Dio dio;
  DioHelper(this.dio) {
    initDio();
  }

  initDio() {
    dio = Dio(
      BaseOptions(
          baseUrl: Constant.baseUrl,
          receiveDataWhenStatusError: true,
          followRedirects: false,
          headers: {
            "Authorization": "Bearer ${Constant.token}",
            "Accept": "application/json",
            "Content-Type": "application/json"
          }),
    );
    // dio.interceptors.add(RequestsInspectorInterceptor());
    log("DioHelper: initDio ${dio.options.baseUrl}");
  }

  Future<Response> getData(
      {required String endPoints, Map<String, dynamic>? query}) async {
    // dio.interceptors.add(RequestsInspectorInterceptor());
    dio.options.headers = {
      "Authorization": "Bearer ${Constant.token}",
      "Accept": "application/json",
      "Content-Type": "application/json"
    };
    return await dio.get(endPoints,
        queryParameters: query ?? {},
        options: Options(headers: {
          "Authorization": "Bearer ${Constant.token}",
          "Accept": "application/json",
        }));
  }

  Future<Response> postData({
    required String endPoints,
    Map<String, dynamic>? query,
    String? contentType,
    Object? data,
    // Customize this to match your API's file parameter key
  }) async {
    // dio.interceptors.add(RequestsInspectorInterceptor());

    dio.options.headers = {
      "Authorization": "Bearer ${Constant.token}",
      'Content-Type': contentType ?? 'application/json',
      "Accept": "application/json",
    };

    return await dio.post(
      endPoints,
      queryParameters: query,
      data: data,
    );
  }

  // static Future<String> downloadImage(String url) async {
  //   dio.options.headers = {
  //     "Authorization": "Bearer ${Constance.token}",
  //     "Accept": "application/json",
  //   };
  //   Directory appDocDir = await getApplicationDocumentsDirectory();
  //   String filePath = '${appDocDir.path}/downloaded_logo.jpg';
  //   log("Downloading image from: $url to: $filePath");
  //   await dio.download(url, filePath);
  //   return filePath;
  // }
}
