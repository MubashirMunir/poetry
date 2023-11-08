import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poetry/darktheme.dart';
import 'package:poetry/onboarding/onbarding.dart';
import 'screens/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: light,
      home: omboarding(),
    );
  }
}
