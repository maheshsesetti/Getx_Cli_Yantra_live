
import 'package:get/get.dart';

import 'package:getxcli_yantralive/data/api/home_page_api.dart';

class DependencyCreator {
  DependencyCreator._();
  static init() async {
    Get.lazyPut(() => CustomerApi(),fenix: true);
  }
}