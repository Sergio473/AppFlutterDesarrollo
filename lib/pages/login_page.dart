import 'package:flutter/material.dart';
import 'package:flutterappprueba/widgets/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
          child: Container(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      const Text("First App",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 40.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w300
                      ),),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Center(
                      child: SingleChildScrollView(
                        child: LoginForm(),
                      ),
                    ),
                    )   
                ],
              ))),
    );
  }
}
