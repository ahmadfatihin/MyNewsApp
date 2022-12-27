import 'package:flutter/material.dart';
import 'package:mynewsapp/config/routes/routes.gr.dart';
import 'package:mynewsapp/constant/ui.dart';
import 'package:mynewsapp/module/home/screens/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // setupScreenUtil(context);
    return MaterialApp.router(
      title: 'My News App',
      theme: ThemeData(
        scaffoldBackgroundColor: monoColor,
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
