import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/common_widgets/common_text_form_field.dart';
import 'package:latest_flutter/level_2/common_widgets/custom_button.dart';
import 'package:latest_flutter/level_2/login_level_2.dart';
import 'package:latest_flutter/level_2/open_screen.dart';
import 'package:latest_flutter/level_2/reg_level_2.dart';
import 'package:sizer/sizer.dart';
import 'package:latest_flutter/login_reg_screen/splash_screen.dart';

class ForgotLevel2 extends StatefulWidget {

  final String registeredEmail; // final - value doesnot need to change once we declared

  const ForgotLevel2({
    super.key, // To pass the widget to the parent class
    required this.registeredEmail, // user must provide the value while creating the object
  });

  @override
  State<ForgotLevel2> createState() => _ForgotLevel2State();
}

class _ForgotLevel2State extends State<ForgotLevel2> {

  final _formKey = GlobalKey<FormState>(); //  globalkey - identify the unique widgets and access its state
                                           // formstate - control and validate the form
  final _emailController = TextEditingController();
  bool emailNotFound = false; // user enter panna email valid email ah illa enna nu check panna use aagudhu

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }

  void _submitForm(){
    if(!_formKey.currentState!.validate()) { // current form state ah access panna help pannum
                                             // !currentstate - null value illanu dart kku sollum
      return;
    }      ScaffoldMessenger.of(context).showSnackBar( //scaffoldmessenger - snackbar ah show panna use pandra oru class
          SnackBar(content:                            // snackbar - it shows temporary message to users
          Text('Submitted Successfully')));

   Navigator.pushReplacement(
       context, MaterialPageRoute(
       builder: (context) => SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement( // new screen navigate pannum but prevoous screen kkku poga mudiyadhu
              context,
              MaterialPageRoute(
                builder: (context) =>  LoginLevel2(
                  registeredName: "",
                  registeredPassword: "",
                  registeredEmail: "",
                ),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0.sh),
          child: Form(
            key: _formKey, // form ah control pandraa key
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch, // stretch - ful available space occupy pannum
                children: [
                  Icon(Icons.error_outline,
                  size: 10.0.sh,
                    color: Colors.blue,
                  ),
                  SizedBox(height: 4.0.h,),

                  Text("Forgot Password",
                  textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 3.0.sh,
                        color: Colors.black,
                        fontWeight: FontWeight.bold ),
                  ),
                  SizedBox(height: 2.0.h,),

                  Text('Enter your email and we will sed you a link to reset your '
                      '\npassword',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 1.8.sh,
                        color: Colors.grey.shade800
                    ),
                  ),
                  SizedBox(height: 4.0.h,),

                  CommonTextFormField(
                      controller: _emailController,
                     showBorder: true,
                    prefixIcon: Icon(Icons.email,color: Colors.grey,),
                    onChanged: (value){
                        setState(() {
                          emailNotFound = value != widget.registeredEmail;
                          if(emailNotFound)
                            Text("We cannot find your email",
                            style: TextStyle(color: Colors.red),);
                        });
                    },
                    validator: (value){
                      if (value == null || value.trim().isEmpty){
                        return "Please enter your email";
                      }
                      final emailRegex =
                      RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

                      if (!emailRegex.hasMatch(value)) {
                        return "Enter a valid email";
                      }

                      if (value != widget.registeredEmail) {
                        return "We cannot find your email";
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 3.0.h,),

                  CustomButton(
                      text: "Submit",
                      minimumSize: Size(6.w, 7.h),
                      backgroundColor: Colors.green.shade500,
                      onPressed: () {
                        _submitForm();
                      },
                  ),
                  SizedBox(height: 3.0.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chevron_left,
                        color: Colors.black,
                      ),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegLevel2()));
                      },                                                     // builder-which screen wants to create
                                                                             // context-navigate to current screen
                        child:
                      Text('Back to Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 2.0.sh,
                            color: Colors.grey
                        ),
                      ),),
                    ],
                  ),

                ],
          )),
          )),
    );
  }
}

