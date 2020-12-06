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
      duration: Duration(milliseconds: 700),
      vsync: this,
    );
    super.onInit();
  }

  void createController() {
    controller = AnimationController(
      duration: Duration(milliseconds: 700),
      vsync: this,
    );
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
