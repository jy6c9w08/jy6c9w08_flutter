import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import 'interceptors.dart';
Dio myDio;
class DioManager {

  initDio() {
      BaseOptions baseOptions = BaseOptions(
        baseUrl: 'https://pix.ipv4.host',
        connectTimeout: 150000,
        receiveTimeout: 150000,
      );
      myDio = Dio(baseOptions);
    myDio.interceptors.add(DioInterceptors());
  }

}