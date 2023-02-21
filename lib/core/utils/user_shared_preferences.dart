

import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences{
  static SharedPreferences? _preferences;
  static Future init() async=> _preferences= await SharedPreferences.getInstance();


  static Future setMobileNo(String mobileNo) async{
    await _preferences?.setString("mobile_no", mobileNo);
  }
  static String? getMobileNo()=>_preferences?.getString("mobile_no");


}