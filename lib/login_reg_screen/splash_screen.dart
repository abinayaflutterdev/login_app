import 'dart:async';
import 'package:latest_flutter/level_2/open_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/open_screen.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){ // API call pannalaam //Database read pannalaam //Timer start pannalaam// Animation start pannalaam
                        // Initial values set pannalaam
    super.initState();
    _startDelay(); // own function
  }

  void _startDelay(){
    Timer(Duration(seconds: 4),(){
      if(mounted){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context)=> OpenScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset( "asset/man.jpg",
          width: 150.0.sh,),
      ),
    );
  }
}
