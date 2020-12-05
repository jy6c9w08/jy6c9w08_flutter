import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/get_route.dart';
import 'package:jy6c9w08_flutter/page/button_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: routeList,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Home Page"),
        ),
        body: Container(
          alignment: Alignment.centerLeft,
          child: Center(child: ButtonList()),
        ),
      ),
    );
  }
}
