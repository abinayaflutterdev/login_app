import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed; // callback - pass a function when button clicked
  final Color? backgroundColor;
  final Size? minimumSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.minimumSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(
         backgroundColor: backgroundColor ?? Colors.blue,
         minimumSize: minimumSize,
       ),
        onPressed: onPressed,
        child: Text(text)
    );
  }
}
