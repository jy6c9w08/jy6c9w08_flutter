import 'package:flutter/material.dart';
import 'package:jy6c9w08_flutter/get_controller/waterfall_flow.dart';
import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/widget/image_cell.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

//TODO 美化图片边框,优化加载速度,添加下拉加载
class WaterfallFlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final WaterfallFlowController getController =
        Get.put(WaterfallFlowController());
    return Container(
        color: Colors.white,
        child: GetBuilder<WaterfallFlowController>(
            init: getController,
            builder: (controller) {
              return controller.illustList == null
                  ? Text("加载中")
                  : WaterfallFlow.builder(
                      controller: controller.scrollController,
                      itemCount: controller.listCount,
                      itemBuilder: (BuildContext context, int index) {
                        return ImageCell(
                            imageMsg: controller.illustList[index]);
                      },
                      gridDelegate:
                          SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                            crossAxisSpacing: 7,
                            mainAxisSpacing: 7
                      ),
                    );
            }));
  }
}
