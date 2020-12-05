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
      color: Colors.blue,
      // height:imageMsg.height/10,
      // width:imageMsg.width/20,
      constraints: BoxConstraints(
          minHeight: screen.setWidth(148) / imageMsg.width * imageMsg.height,
          minWidth: screen.setWidth(148)),
      child: Image.network(
        imageMsg.imageUrls[0].medium,
        // width: imageMsg.width,
        // height: imageMsg.height/10,
        headers: {'Referer': 'https://app-api.pixiv.net'},
      ),
    );
  }
}
