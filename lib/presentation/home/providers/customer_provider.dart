import 'package:get/get.dart';

import '../../../domain/entity/customer_model.dart';

class CustomerProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Company.fromJson(map);
      if (map is List) {
        return map.map((item) => Company.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Company?> getCustomer(int id) async {
    final response = await get('customer/$id');
    return response.body;
  }

  Future<Response<Company>> postCustomer(Company customer) async =>
      await post('customer', customer);
  Future<Response> deleteCustomer(int id) async => await delete('customer/$id');
}
