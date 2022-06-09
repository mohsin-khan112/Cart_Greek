import 'dart:convert';
import 'package:cart_greek_assignment/model/get_data_response_model.dart';
import 'package:cart_greek_assignment/provider/rest_api.dart';
import 'package:dio/dio.dart';

class PackagesDetailsAPI {
  static Future<GetDataResponseModel?> getPackagesDetails() async {
    var dio = Dio();
    final response = await dio.get(
      RestAPI.getPackage,
    );
    if (response.statusCode == 200) {
      print('response ${response.data}');
      var data = GetDataResponseModel.fromJson(jsonDecode(response.data));

      return data;
    }
  }
}
