import 'dart:convert';
import 'dart:developer';
import 'package:ecommerce/data/model/response_model.dart';
import 'package:ecommerce/ui/state_management/auth_controller.dart';
import 'package:ecommerce/ui/state_management/user_auth_controller.dart';
import 'package:http/http.dart';
import '../utils/urls.dart';

class NetworkCaller {
  NetworkCaller._();

  static Future<ResponseModel> getRequest({required String url}) async {
    try {
      final Response response = await get(Uri.parse(Urls.baseUrl + url), headers: {
        'Content-type' : 'application/json',
        'Accept' : 'application/json',
        'token' : AuthController.token.toString(),
      });
      log(response.body);
      if (response.statusCode == 200) {
        return ResponseModel(
          isSuccess: true,
          statusCode: response.statusCode,
          returnData: jsonDecode(response.body),
        );
      } else {
        return ResponseModel(
          isSuccess: false,
          statusCode: response.statusCode,
          returnData: jsonDecode(response.body),
        );
      }
    } catch (e) {
      log(e.toString());
      return ResponseModel(
        isSuccess: false,
        statusCode: -1,
        returnData: e.toString(),
      );
    }
  }
}
