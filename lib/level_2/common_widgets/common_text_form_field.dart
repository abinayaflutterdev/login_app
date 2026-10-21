import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

class CommonTextFormField extends StatelessWidget {

  final TextEditingController controller;
  final bool obscureText; // eye icon show panna use pandradhu
  final Widget? prefixIcon;
  final String? hintText;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;  // validate- input validation,
  final VoidCallback? onSuffixIconPressed; // void - helps function pass,onsuffixIconpressed- when user click icon executes function
  final List<TextInputFormatter>? inputFormatters;
  final EdgeInsetsGeometry? contentPadding; // box ulla vara text control pannudhu
  final BorderRadius? borderRadius;
  final Color? fillColor;
  final bool filled;
  final bool showBorder;
  final Function(String)? onChanged; // whenevver we do changes inside of the textfield it will change
  final String? errorText;

  const CommonTextFormField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText='',
    this.validator,
    this.keyboardType=TextInputType.text,
    this.obscureText=false,
    this.onSuffixIconPressed,
    this.inputFormatters,
    this.contentPadding,
    this.borderRadius,
    this.fillColor,
    this.filled = false,
    this.showBorder= true,
    this.onChanged,
    this.errorText,
});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller : controller,
      cursorColor: Colors.grey,
      cursorWidth: 0.2.w,
      obscureText: obscureText, // password hidden or unhidden
      keyboardType: keyboardType,
      validator: validator, // for validating the conditions
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        filled: filled,
        fillColor: fillColor,
        isDense: true,   // if true textFormField height reduce panna
        contentPadding: contentPadding??EdgeInsets.symmetric(
          vertical: 3.0.sh, // top and bottom height
          horizontal: 3.0.sh // left and right width
        ),
        prefixIcon: prefixIcon ,
        suffixIcon: suffixIcon != null // it checkes either icon show or null
            ? IconButton(onPressed: onSuffixIconPressed, icon: Icon(suffixIcon,color: Colors.grey.shade500,)):null,
        border: OutlineInputBorder(
          borderRadius: borderRadius??BorderRadius.circular(1.1.sh),
        ),

      enabledBorder: showBorder?OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey,),
        borderRadius: BorderRadius.circular(1.1.sh)
      ):InputBorder.none,

      focusedBorder: showBorder?OutlineInputBorder(
        borderRadius: BorderRadius.circular(1.1.sh),
        borderSide: BorderSide(color: Colors.grey,),
      ):InputBorder.none,

      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red,),
        borderRadius: BorderRadius.circular(1.1.sh)
      ),

      ),
      onChanged: onChanged,

    );

  }
}
