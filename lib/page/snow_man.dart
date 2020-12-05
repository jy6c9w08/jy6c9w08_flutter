//参阅王叔不秃
import 'dart:math';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:jy6c9w08_flutter/get_controller/snow_man.dart';

class SnowMan extends StatelessWidget {
  final List<SnowFlake> _snowFlakes =
      List.generate(500, (index) => SnowFlake());

  @override
  Widget build(BuildContext context) {
    final SnowManGetController getController = Get.put(SnowManGetController());
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.white,
            ],
                stops: [
              0.0,
              0.55,
              0.99
            ])),
        child: AnimatedBuilder(
          animation: getController.controller,
          builder: (_, __) {
            _snowFlakes.forEach((snow) {
              snow.fall();
            });
            return CustomPaint(
              painter: MyPainter(snowFlakes: _snowFlakes),
            );
          },
        ));
  }
}

class MyPainter extends CustomPainter {
  List<SnowFlake> snowFlakes;

  MyPainter({@required this.snowFlakes});

  @override
  void paint(Canvas canvas, Size size) {
    final whitePaint = Paint()..color = Colors.white;

    canvas.drawCircle(size.center(Offset(0, 200)), 60.0, whitePaint);
    canvas.drawOval(
        Rect.fromCenter(
            center: size.center(Offset(0, 350)), width: 200, height: 250),
        whitePaint);
    snowFlakes.forEach((snowFlake) {
      canvas.drawCircle(
          Offset(snowFlake.x, snowFlake.y), snowFlake.radius, whitePaint);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SnowFlake {
  double x = Random().nextDouble() * 500;
  double y = Random().nextDouble() * 1000;
  double radius = Random().nextDouble() * 2 + 2;
  double velocity = Random().nextDouble() * 4 + 2;

  fall() {
    y += velocity;
    if (y > 1500) {
      y = 0;
      x = Random().nextDouble() * 500;
      radius = Random().nextDouble() * 2 + 2;
      velocity = Random().nextDouble() * 4 + 2;
    }
  }
}
