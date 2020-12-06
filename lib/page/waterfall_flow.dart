import 'package:flutter/material.dart';
import 'package:jy6c9w08_flutter/get_controller/image.dart';
import 'package:jy6c9w08_flutter/get_controller/waterfall_flow.dart';
import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/widget/image_cell.dart';
import 'package:jy6c9w08_flutter/widget/loading_box.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallFlowPage extends StatelessWidget {
  final WaterfallFlowController getController =
      Get.put(WaterfallFlowController());
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: GetBuilder<WaterfallFlowController>(
            id: 'list',
            init: getController,
            builder: (controller) {
              return controller.illustList == null
                  ? LoadingBox()
                  : WaterfallFlow.builder(
                      controller: controller.scrollController,
                      itemCount: controller.listCount,
                      itemBuilder: (BuildContext context, int index) {
                        Get.put(
                            ImageController(
                                illust: controller.illustList[index]),
                            tag: controller.illustList[index].id.toString(),
                            permanent: false);
                        return ImageCell(
                          imageId: controller.illustList[index].id.toString(),
                        );
                      },
                      gridDelegate:
                          SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 7,
                              mainAxisSpacing: 7),
                    );
            }));
  }
}
