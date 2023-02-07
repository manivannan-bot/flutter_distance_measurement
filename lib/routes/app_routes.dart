import 'package:flutter/material.dart';
import 'package:azep/presentation/login_screen/login_screen.dart';
import 'package:azep/presentation/surge_screen/surge_screen.dart';
import 'package:azep/presentation/otp_screen/otp_screen.dart';
import 'package:azep/presentation/name_screen/name_screen.dart';
import 'package:azep/presentation/home_start_screen/home_start_screen.dart';
import 'package:azep/presentation/home_complete_screen/home_complete_screen.dart';
import 'package:azep/presentation/ride_info_screen/ride_info_screen.dart';
import 'package:azep/presentation/change_popup_screen/change_popup_screen.dart';
import 'package:azep/presentation/settings_screen/settings_screen.dart';
import 'package:azep/presentation/fare_edit_screen/fare_edit_screen.dart';
import 'package:azep/presentation/fare_settings_screen/fare_settings_screen.dart';
import 'package:azep/presentation/ride_screen/ride_screen.dart';
import 'package:azep/presentation/complaint_screen/complaint_screen.dart';
import 'package:azep/presentation/complaints_list_screen/complaints_list_screen.dart';
import 'package:azep/presentation/fare_calculation_screen/fare_calculation_screen.dart';
import 'package:azep/presentation/search_screen/search_screen.dart';
import 'package:azep/presentation/community_screen/community_screen.dart';
import 'package:azep/presentation/community_details_screen/community_details_screen.dart';
import 'package:azep/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String surgeScreen = '/surge_screen';

  static const String otpScreen = '/otp_screen';

  static const String nameScreen = '/name_screen';

  static const String homeStartScreen = '/home_start_screen';

  static const String homeCompleteScreen = '/home_complete_screen';

  static const String rideInfoScreen = '/ride_info_screen';

  static const String changePopupScreen = '/change_popup_screen';

  static const String settingsScreen = '/settings_screen';

  static const String fareEditScreen = '/fare_edit_screen';

  static const String fareSettingsScreen = '/fare_settings_screen';

  static const String rideScreen = '/ride_screen';

  static const String complaintScreen = '/complaint_screen';

  static const String complaintsListScreen = '/complaints_list_screen';

  static const String fareCalculationScreen = '/fare_calculation_screen';

  static const String searchScreen = '/search_screen';

  static const String communityScreen = '/community_screen';

  static const String communityDetailsScreen = '/community_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    surgeScreen: (context) => SurgeScreen(),
    otpScreen: (context) => OtpScreen(),
    nameScreen: (context) => NameScreen(),
    homeStartScreen: (context) => HomeStartScreen(),
    homeCompleteScreen: (context) => HomeCompleteScreen(),
    rideInfoScreen: (context) => RideInfoScreen(),
    changePopupScreen: (context) => ChangePopupScreen(),
    settingsScreen: (context) => SettingsScreen(),
    fareEditScreen: (context) => FareEditScreen(),
    fareSettingsScreen: (context) => FareSettingsScreen(),
    rideScreen: (context) => RideScreen(),
    complaintScreen: (context) => ComplaintScreen(),
    complaintsListScreen: (context) => ComplaintsListScreen(),
    fareCalculationScreen: (context) => FareCalculationScreen(),
    searchScreen: (context) => SearchScreen(),
    communityScreen: (context) => CommunityScreen(),
    communityDetailsScreen: (context) => CommunityDetailsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
