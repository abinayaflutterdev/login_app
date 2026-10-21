import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcon extends StatelessWidget {

  final bool isCircle;
  final bool showInstagram;
  final bool showGoogle;
  final bool showFacebook;
  final bool showApple;

  const SocialIcon({
    super.key,
    this.isCircle = true,
    this.showInstagram = true,
    this.showGoogle = true,
    this.showFacebook = true,
    this.showApple = true,
  });

  Widget socialCard(IconData icon,Color color) {
    return Container(
      height: 8.h,
      width: 9.w,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: isCircle
          ? BoxShape.circle
          : BoxShape.rectangle,
        borderRadius: isCircle ? null : BorderRadius.circular(1.0.sh),
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: FaIcon(icon,
        color: color,),
      ),
    );
  }
  @override
    Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(showInstagram)
        socialCard(FontAwesomeIcons.instagram, Colors.pink,),
        SizedBox(width: 3.0.w,),
        if(showGoogle)
        socialCard(FontAwesomeIcons.google, Colors.red),
        SizedBox(width: 3.0.w,),
        if(showFacebook)
        socialCard(FontAwesomeIcons.facebook, Colors.blue),
        SizedBox(width: 3.0.w,),
        if(showApple)
          socialCard(FontAwesomeIcons.apple, Colors.black),
        SizedBox(width: 3.0.w,),
      ],
    );
  }
}
