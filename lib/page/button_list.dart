import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:jy6c9w08_flutter/widget/home_button.dart';

class ButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(324, 576), allowFontScaling: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button List"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              HomeButton(buttonName: 'snow_man'),
              HomeButton(buttonName: 'waterfall_flow'),
            ],
          ),
        ),
      ),
    );
  }
}
