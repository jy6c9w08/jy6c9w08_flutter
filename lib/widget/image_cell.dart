import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:get/get.dart';
import 'package:extended_image/extended_image.dart';
import 'package:jy6c9w08_flutter/get_controller/image.dart';

class ImageCell extends StatelessWidget {
  final String imageId;
  final ScreenUtil screen = ScreenUtil();

  ImageCell({Key key, this.imageId}) : super(key: key);

  Widget dealImageState(ExtendedImageState state) {
    ImageController imageController = Get.find(tag: imageId);
    switch (state.extendedImageLoadState) {
      case LoadState.loading:
        return null;
      case LoadState.completed:
        try {
          imageController.controller.forward();
        } catch (e) {
          imageController.createController();
        }
        print("加载成功");
        return FadeTransition(
          opacity: imageController.controller,
          child: ExtendedRawImage(
            image: state.extendedImageInfo?.image,
          ),
        );

        break;
      case LoadState.failed:
        print("加载失败");
        break;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    ImageController imageController = Get.find(tag: imageId);
    return GetBuilder<ImageController>(
        init: imageController,
        builder: (_) {
          return ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius:
                BorderRadius.all(Radius.circular(ScreenUtil().setWidth(15))),
            child: ExtendedImage.network(
              imageController.illust.imageUrls[0].medium,
              key: ValueKey(imageId),
              headers: {'Referer': 'https://app-api.pixiv.net'},
              width: screen.screenWidth / 2,
              height: screen.screenWidth /
                  2 /
                  imageController.illust.width *
                  imageController.illust.height,
              loadStateChanged: dealImageState,
            ),
          );
        });
  }
}
