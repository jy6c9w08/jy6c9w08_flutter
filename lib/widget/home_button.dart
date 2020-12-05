import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeButton extends StatelessWidget {
  final String buttonName;

  const HomeButton({Key key, @required this.buttonName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          Get.toNamed('/' + buttonName);
        },
        child: Text(buttonName),
      ),
    );
  }
}
