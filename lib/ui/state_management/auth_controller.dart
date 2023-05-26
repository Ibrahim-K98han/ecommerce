import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static String? _token;
  //static ProfileData? _profileData;

  static String? get token => _token;

  //static ProfileData? get profile => _profileData;

  Future<bool> isLoggedIn() async {
    await getToken();
    //await getProfileData();
    return _token != null;
  }

  Future<void> saveToken(String userToken) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _token = userToken;
    await preferences.setString('crafty_token', userToken);
  }

  // Future<void> saveProfileData(ProfileData profileData) async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   _profileData = profile;
  //   await preferences.setString('user_profile', profile.toJson().toString());
  // }

  Future<void> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _token = preferences.getString('crafty_token');
  }

  // Future<void> getProfileData() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   _profileData = preferences.fromJson(
  //     jsonDecode(preferences.getString('user_profile') ?? '{}'),
  //   );
  // }

  Future<void> clearUserData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
