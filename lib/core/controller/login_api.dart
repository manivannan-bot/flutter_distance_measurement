import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'api_helper.dart';
import 'custom_exception.dart';

class LoginAPI {
  dynamic result;
  Response? response;
  Map<String, dynamic>? data;
  Future<dynamic> getAnnouncement() async {
    var pref = await SharedPreferences.getInstance();
    var token = pref.getString('JWT-Token');
    var userId = pref.getString('User-Id');
    try {
      final response = await http.get(
        Uri.parse(ApiBaseUrl.baseUrl + ApiEndPoint.getAnnouncementEndPoint),
        headers: {
          "User-ID": "$userId",
          "Authorization": "$token",
          "Auth-key": "schoolAdmin@",
          "Client-Service": "smartschool",
          "Content-Type": "application/json",
        },
      );

      debugPrint('ANNOUNCEMENT RESPONSE STATUS CODE: ${response.statusCode}');
      debugPrint('ANNOUNCEMENT RESPONSE DATA: ${response.body}');

      if (response.statusCode == 200) {
        data = jsonDecode(response.body);
        result = data;
      } else if (response.statusCode == 400) {
      } else if (response.statusCode == 401) {
        //TODO
      }
    } on SocketException {
      throw FetchDataException("Network Error");
    }
    return result;
  }
}
