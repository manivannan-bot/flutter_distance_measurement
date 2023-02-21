import 'package:azep/routes/app_routes.dart';
import 'package:flutter/material.dart';

import 'core/utils/user_shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await UserSharedPreferences.init();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'azep',
      initialRoute: AppRoutes.loginScreen,
      routes: AppRoutes.routes,
    );
  }
}
