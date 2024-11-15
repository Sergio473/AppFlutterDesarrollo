import 'package:flutter/material.dart';
import 'package:flutterappprueba/pages/first_app_home.dart';
import 'package:flutterappprueba/pages/loading_page.dart';
import '../pages/login_page.dart';
import '../pages/register_page.dart';

class RouteManager {
  static const String loadingPage = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String firstAppHomePage= '/firstAppHomePage';


  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //route for loading page
      case loadingPage:
        return MaterialPageRoute(
          builder: (context) => const LoadingPage(),
        );

      //route for login page
      case loginPage:
      return MaterialPageRoute(builder: (context) => const LoginPage());
      
      //route for register page
      case registerPage:
      return MaterialPageRoute(builder: (context) => const RegisterPage());

      //route for home page
      case firstAppHomePage:
      return MaterialPageRoute(builder: (context) => const FirstAppHome());

      default:
      throw Exception("No route found!");
    }
  }
}
