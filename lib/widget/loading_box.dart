import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingBox extends StatelessWidget {
  final screen = ScreenUtil();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Lottie.asset('assets/196-material-wave-loading.json',
              width: screen.setWidth(150)),
        ));
  }
}
