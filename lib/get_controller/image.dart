import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/data_model/waterfall_flow.dart';

class ImageController extends GetxController with SingleGetTickerProviderMixin {
  ImageController({this.illust});

  AnimationController controller;
  Illust illust;

  @override
  void onInit() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    super.onInit();
  }

  void createController() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller.forward();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
