import 'package:get/get.dart';
import 'package:jy6c9w08_flutter/page/button_list.dart';
import 'package:jy6c9w08_flutter/page/snow_man.dart';
import 'package:jy6c9w08_flutter/page/waterfall_flow.dart';
import 'package:jy6c9w08_flutter/widget/loading_box.dart';

List<GetPage> routeList = [
  GetPage(name: '/', page: () => ButtonList()),
  GetPage(name: '/waterfall_flow', page: () => WaterfallFlowPage()),
  GetPage(name: '/snow_man', page: () => SnowMan()),
  GetPage(name: '/loading_box', page: () => LoadingBox())
];
