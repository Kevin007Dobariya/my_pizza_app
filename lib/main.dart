import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_pizza/constants/app_colors.dart';
import 'package:my_pizza/routes/screen_routes.dart';
import 'package:my_pizza/view/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';
import 'routes/name_routes.dart';
import 'utils/sahredpreference/app_prefrence.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppPreference.init();
  runApp(GetMaterialApp(
    theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.themeColorRed,
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: AppColors.themeColorRed))),
    getPages: ScreenRoutes.screens,
    initialRoute: Routes.DashboardScreen,
    home: const DashboardScreen(),
  ));
}
