import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController{
  static String? _token;

  static String? get token=>_token;

  Future<bool>isLoggedIn()async{
    await getToken();
    return _token != null;
  }

  Future<void> saveToken(String userToken)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _token = userToken;
    await preferences.setString('crafty_token', userToken);
  }

  Future<void> getToken()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _token = preferences.getString('crafty_token');
  }

  Future<void> clearUserData()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}