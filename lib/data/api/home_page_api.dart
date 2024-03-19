import 'package:getxcli_yantralive/core/constant.dart';
import 'package:getxcli_yantralive/core/service/api_service.dart';

import '../../domain/entity/customer_model.dart';

class CustomerApi {
  Future<Company?> getData() async {
    return Company.fromJson(await ApiClient().get(Constants.baseUrl));
  }
}