import 'package:jy6c9w08_flutter/data_model/waterfall_flow.dart';
import 'package:jy6c9w08_flutter/dio/manager.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class WaterfallFlowController extends GetxController {
  List<Illust> illustList;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  initData() {
    getData();
  }

  getData() async {
    String url = '/ranks?page=1&date=2020-12-02&mode=day&pageSize=30';
    dio.Response response = await myDio.get(url);
    illustList = WaterfallFlowModel.fromJson(response.data).data;
    update();
    return response.data['data'];
  }
}
