
import 'package:get/get.dart';

import 'package:intl/intl.dart';

import '../../../data/api/home_page_api.dart';

import '../../../domain/entity/customer_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final formatter = DateFormat('yMMMMd').format(DateTime.now()).obs;
  final name = "Hi Mahesh Babu".obs;

  @override
  void onInit() async {
    super.onInit();
  }

   Future<Company?> loadData() async {
    final response = await CustomerApi().getData();
    return response;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
