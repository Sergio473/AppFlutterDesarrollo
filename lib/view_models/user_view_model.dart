import 'package:flutter/material.dart';
import 'package:flutterappprueba/routes/route_manager.dart';

class UserViewModel with ChangeNotifier {
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();

  void loginUserInUI(BuildContext context,
      {required String email, required String password}) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (loginFormKey.currentState?.validate() ?? false) {
      Navigator.of(context).popAndPushNamed(RouteManager.firstAppHomePage);
    }
  }

  void logoutUserInUI(BuildContext context) async {
    Navigator.popAndPushNamed(context, RouteManager.loginPage);
  }
}
