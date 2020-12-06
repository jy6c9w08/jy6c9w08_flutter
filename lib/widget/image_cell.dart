import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:jy6c9w08_flutter/data_model/waterfall_flow.dart';
import 'package:extended_image/extended_image.dart';

class ImageCell extends StatelessWidget {
  final Illust imageMsg;
  final ScreenUtil screen = ScreenUtil();

  ImageCell({Key key, this.imageMsg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screen.screenWidth / 2,
      height: screen.screenWidth / 2 / imageMsg.width * imageMsg.height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(screen.setWidth(20))),
          image: DecorationImage(
              image: ExtendedNetworkImageProvider(
            imageMsg.imageUrls[0].medium,
            headers: {'Referer': 'https://app-api.pixiv.net'},
            cache: true,
          ))),
    );
  }
}
