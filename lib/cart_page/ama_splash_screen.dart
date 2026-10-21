import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/reg_level_2.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'dart:async';

import '../login_reg_screen/custom_file.dart';


class AmaSplashScreen extends StatefulWidget {
  const AmaSplashScreen({super.key});

  @override
  State<AmaSplashScreen> createState() => _AmaSplashScreenState();
}

class _AmaSplashScreenState extends State<AmaSplashScreen> {

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      // Remove the native splash screen
      FlutterNativeSplash.remove();

      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const RegLevel2(),
        ),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('something')
      )
    );
  }
}
