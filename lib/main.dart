import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/get_route.dart';
import 'dio/manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    DioManager().initDio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialRoute: '/',
      getPages: routeList,
    );
  }
}
