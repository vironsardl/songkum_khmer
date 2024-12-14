import 'package:flutter/material.dart';
import 'package:projects/pages/edit_profile_page.dart';
import 'package:projects/pages/home_page.dart';
import 'package:projects/pages/login_page.dart';
import 'package:projects/pages/main_page.dart';
import 'package:projects/styles/app_colors.dart';

import 'config/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
      initialRoute: AppRoutes.login,
      routes: AppRoutes.pages,
    );
  }
}
