import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterappprueba/misc/constants.dart';
import 'package:flutterappprueba/misc/validators.dart';
import 'package:flutterappprueba/routes/route_manager.dart';
import 'package:flutterappprueba/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<UserViewModel>().loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBoxH30(),
              TextFormField(
                textInputAction: TextInputAction.next,
                validator: validateEmail,
                controller: emailController,
                decoration: formDecoration('Email address', Icons.mail_outline)
                    .copyWith(
                  labelText: 'Email address',
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBoxH10(),
              TextFormField(
                textInputAction: TextInputAction.done,
                validator: validatePassword,
                controller: passwordController,
                decoration:
                    formDecoration('Password', Icons.lock_outline).copyWith(
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.black),
                ),
              ),
              const SizedBoxH20(),
              //forgot password
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: style16Black,
                      ))
                ],
              ),
              //SIGN IN BUTTON
              CupertinoButton(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.black,
                  child: const Text(
                    'Sign in',
                    style: style16White,
                  ),
                  onPressed: () {
                    context.read<UserViewModel>().loginUserInUI(context,
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                  }),
              const SizedBoxH10(),
              CupertinoButton(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.black,
                  child: const Text(
                    'Sign up',
                    style: style16White,
                  ),
                  onPressed: () {
                    Navigator.popAndPushNamed(
                        context, RouteManager.registerPage);
                  }),
            ],
          ),
        ));
  }
}
