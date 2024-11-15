import 'package:flutter/material.dart';
import 'package:flutterappprueba/misc/constants.dart';
import 'package:flutterappprueba/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

class FirstAppHome extends StatefulWidget {
  const FirstAppHome({super.key});

  @override
  State<FirstAppHome> createState() => _FirstAppHomeState();
}

class _FirstAppHomeState extends State<FirstAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home page",
          style: style16Black
        ),
        actions: [
          IconButton(onPressed: (){
            context.read<UserViewModel>().logoutUserInUI(context);
          }, icon: const Icon(Icons.exit_to_app)),
        ]
      ),
      body: const Center(child: Text("Home Screen!")
      ),
    );
  }
}
