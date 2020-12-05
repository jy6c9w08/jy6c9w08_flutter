import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnowManGetController extends GetxController
    with SingleGetTickerProviderMixin {
  AnimationController controller;

  @override
  void onInit() {
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    controller.repeat();
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
