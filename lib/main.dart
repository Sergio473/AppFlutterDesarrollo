import 'package:flutter/material.dart';
import 'package:flutterappprueba/routes/route_manager.dart';
import 'package:flutterappprueba/view_models/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserViewModel(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteManager.onGenerateRoute,
        initialRoute: RouteManager.loadingPage,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
      ),
    );
  }
}
