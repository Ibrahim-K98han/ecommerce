import 'package:ecommerce/data/service/network_caller.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController{
  bool _getProfileDataInProgress = false;

  bool get getProfileDataInProgress => _getProfileDataInProgress;

  Future<bool> getProfileData()async{
    _getProfileDataInProgress = true;
    update();
    final response = await NetworkCaller.getRequest(url: '/ReadProfile');
    _getProfileDataInProgress = false;
    if(response.isSuccess){
      update();
      return true;
    }else{
      update();
      return false;
    }
  }
}