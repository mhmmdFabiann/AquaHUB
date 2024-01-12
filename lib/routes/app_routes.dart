import 'package:flutter/material.dart';
import 'package:aquahub_10/presentation/login_register_screen/login_register_screen.dart';
import 'package:aquahub_10/presentation/login_screen/login_screen.dart';
import 'package:aquahub_10/presentation/register_screen/register_screen.dart';
import 'package:aquahub_10/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:aquahub_10/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginRegisterScreen = '/login_register_screen';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginRegisterScreen: (context) => LoginRegisterScreen(),
    loginScreen: (context) => LoginScreen(),
    registerScreen: (context) => RegisterScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
