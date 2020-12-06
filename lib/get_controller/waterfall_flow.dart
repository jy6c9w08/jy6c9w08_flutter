import 'package:flutter/cupertino.dart';
import 'package:jy6c9w08_flutter/data_model/waterfall_flow.dart';
import 'package:jy6c9w08_flutter/dio/manager.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class WaterfallFlowController extends GetxController {
  List<Illust> illustList;
  ScrollController scrollController;
  int currentPage = 1;
  int listCount;
  bool loadMore = true;

  @override
  void onInit() {
    initList();
    initScrollController();
    super.onInit();
  }

  initList() {
    getData().then((list) {
      illustList = list;
      listCount = list.length;
      update(['list']);
    });
  }

  initScrollController() {
    scrollController = ScrollController(initialScrollOffset: 0.0)
      ..addListener(listenTheList);
  }

  getData({currentPage = 1}) async {
    String url =
        '/ranks?page=$currentPage&date=2020-12-02&mode=day&pageSize=30';
    dio.Response response = await myDio.get(url);
    List listData = WaterfallFlowModel.fromJson(response.data).data;
    return listData;
  }

  listenTheList() {
    if ((scrollController.position.extentAfter < 1200) &&
        (currentPage < 30) &&
        loadMore) {
      loadMore = false;
      currentPage++;
      getData(currentPage: currentPage).then((list) {
        illustList = illustList + list;
        listCount = illustList.length;
        update(['list']);
      });
      Future.delayed(Duration(seconds: 1), () => loadMore = true);
    }
  }
}
