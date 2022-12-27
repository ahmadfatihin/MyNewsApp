import 'package:flutter/material.dart';
import 'package:mynewsapp/module/home/components/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppbar(), body: Center(child: Text("Home Screen")));
  }
}
