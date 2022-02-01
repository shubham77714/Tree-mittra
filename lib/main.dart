import 'package:flutter/material.dart';
import 'package:tree_mitra/pages/about.dart';
import 'package:tree_mitra/pages/contact.dart';
import 'package:tree_mitra/pages/privacy.dart';
import 'package:tree_mitra/pages/slider_home.dart';
import 'package:tree_mitra/pages/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}