import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterappprueba/misc/constants.dart';
import 'package:flutterappprueba/routes/route_manager.dart';

import '../widgets/app_progress_indicator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  //Implement init state to inicializate app
  void initState() {
    //set time before directing to next page
    Timer(
        //set time in seconds
        const Duration(seconds: 5), () {
          //go to login page after 5 seconds of the loading page
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "First App",
              style: titleStyleIndigo,
            ),
            SizedBoxH20(),
            AppProgressIndicator(),
          ],
        )),
    );
  }
}
