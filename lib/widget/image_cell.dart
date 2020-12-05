import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:jy6c9w08_flutter/data_model/waterfall_flow.dart';

class ImageCell extends StatelessWidget {
  final Illust imageMsg;
  final ScreenUtil screen = ScreenUtil();

  ImageCell({Key key, this.imageMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screen.setWidth(2)),
      width: screen.screenWidth / 2,
      height: screen.screenWidth / 2 / imageMsg.width * imageMsg.height,
      child: Image.network(
        imageMsg.imageUrls[0].medium,
        // width: screen.setWidth(150),
        // height:screen.setWidth(160) / imageMsg.width * imageMsg.height,
        headers: {'Referer': 'https://app-api.pixiv.net'},
      ),
    );
  }
}
