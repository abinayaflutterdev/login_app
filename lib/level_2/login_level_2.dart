import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/common_widgets/common_text_form_field.dart';
import 'package:latest_flutter/level_2/common_widgets/custom_button.dart';
import 'package:latest_flutter/level_2/common_widgets/social_icon.dart';
import 'package:latest_flutter/level_2/forgot_level_2.dart';
import 'package:latest_flutter/level_2/reg_level_2.dart';
import 'package:latest_flutter/login_reg_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';

class LoginLevel2 extends StatefulWidget {

  final String registeredName;
  final String registeredPassword;
  final String registeredEmail;


  const LoginLevel2({
    super.key,
    required this.registeredName,
    required this.registeredPassword,
    required this.registeredEmail,

  });

  @override
  State<LoginLevel2> createState() => _LoginLevel2State();
}

class _LoginLevel2State extends State<LoginLevel2> {

  final _formKey =  GlobalKey<FormState>(); // it identify and control the form, save and reset pannalam
                                            // 3 screens irukkuna adhula enna value enha kudukkurom nu paathu sollum crct ah
  final _userName =  TextEditingController();
  final _password = TextEditingController();
  bool isLoginFailed = false; // isloginfailed - login failure illa

  @override
  void dispose(){
    _userName.dispose();
    _password.dispose();
    super.dispose();
  }
  void _submitForm() {
    if (!_formKey.currentState!.validate()) {
      return;
    }

      if (_userName.text == widget.registeredName &&
          _password.text == widget.registeredPassword) {

        setState(() {
          isLoginFailed = false; // false -  login successful , true - login failed
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Signed In Successfully")),
        );

        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen()));
      } else {
        setState(() {
          isLoginFailed = true;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Invalid username or password")),
        );
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>  RegLevel2(),
                ),
              );
            },
          ),
        ),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0.sh),
            child:Form(
              key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.black,
                      size: 10.0.sh,
                    ),
                    SizedBox(height: 6.0.h,),

                    Text('Welcome back you have been misssed!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey.shade500,
                        fontSize: 2.0.sh,
                      ),
                    ),
                    SizedBox(height: 3.0.h,),

                    CommonTextFormField(
                      controller: _userName,
                      errorText: isLoginFailed? "Invalid username":null, // ternary operator
                      filled: true,
                        fillColor: Colors.white,
                        showBorder: false,
                        hintText: 'Username',
                        validator: (value){
                          if(value == null ||  value.trim().isEmpty){
                            return 'Please enter your username';
                          }
                          return null;
                        },
                    ),
                    SizedBox(height: 2.0.h,),

                    CommonTextFormField(
                        controller: _password,
                      errorText: isLoginFailed? "Invalid password":null,
                        filled: true,
                        fillColor: Colors.white,
                        showBorder: false,
                       hintText: 'Password',
                      validator: (value){
                        if(value == null|| value.isEmpty){
                          return"Please enter your password";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 2.0.h,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                                  context, MaterialPageRoute(
                                   builder: (context)=> ForgotLevel2(
                                     registeredEmail: widget.registeredEmail,)));
                                                               // state classs la irundhu widget class variables access panna
                        },
                        child: Text("Forgot Password"),
                      ),
                    ),
                    SizedBox(height: 3.0.h,),
                    CustomButton(
                        text: "Sign In",
                        minimumSize: Size(10.w, 9.h),
                        backgroundColor: Colors.brown.shade900,
                        onPressed: () {
                           _submitForm();
                        },
                    ),
                    SizedBox(height: 6.0.h,),
                    Row(
                      children: [ // occupy remaining space in row and column
                                  // divider - horizontal line (seperate sections ah ui kku kaatun)
                                  // vertical divider - vertical line
                        Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                        SizedBox(width: 1.0.w,),
                        Text('Or continue with',style: TextStyle(color: Colors.grey,fontSize: 1.8.sh,),),
                        SizedBox(width: 1.0.w,),
                        Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                      ],
                    ),
                    SizedBox(height: 4.0.h,),
                    SocialIcon(
                      isCircle: false,
                      showGoogle: true,
                      showFacebook: false,
                      showInstagram: false,
                      showApple: true,
                    ),
                    SizedBox(height: 3.0.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Not a member?",
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 2.0.sh),),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegLevel2(),
                              ),
                            );
                          },
                          child:  Text("Register now",
                            style: TextStyle(color: Colors.blue,
                                fontSize: 2.0.sh),),
                        ),
                      ],
                    ),
                  ],

            ),),),)
    );
  }
}


