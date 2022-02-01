import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tree_mitra/pages/slider_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 7), 
      () => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context)=>const SliderHome()
        )
      )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 122, 50),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/splash_screen.gif",
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/tree_mittra.png",
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(
              "All Rights are Reserved",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700
              )
            ),
          ),
        ],
      ),
      
    );
  }
}