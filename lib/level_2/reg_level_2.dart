import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/common_widgets/common_text_form_field.dart';
import 'package:latest_flutter/level_2/common_widgets/custom_button.dart';
import 'package:latest_flutter/level_2/common_widgets/social_icon.dart';
import 'package:latest_flutter/level_2/policy_screen.dart';
import 'package:latest_flutter/login_reg_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/gestures.dart';
import 'login_level_2.dart';

class RegLevel2 extends StatefulWidget {
  const RegLevel2({super.key});

  @override
  State<RegLevel2> createState() => _RegLevel2State();
}

class _RegLevel2State extends State<RegLevel2> {
                                            // globalkey-identify and control the form, it allows to save or reset the form
  final _formKey = GlobalKey<FormState>(); // supose 3 screen irukku nna  endha screen la
                                           // value kudukkurom and submit click panna crct ah click aagudha nu verify pannaum
  final _emailController = TextEditingController(); // final-form key or controller create pandrahdhu oru tym dhan so used
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _isPasswordObscured = true;
  bool isChecked =  false;

  @override
  void dispose(){
      _emailController.dispose();
      _passwordController.dispose();
      _nameController.dispose();
      _phoneController.dispose();
      super.dispose();
      }
void _submitForm(){
    if(!_formKey.currentState!.validate()) return; // kudutha valuee ah validate panni next screen kondu pogum
    if(!isChecked) { // it means checkbox value
      ScaffoldMessenger.of(context).showSnackBar( // screen kku keela oru msg ah show pannum snakbar
          SnackBar(content: Text('Please accept terms and conditions'),),);
      return; // function stop there
    }
    ScaffoldMessenger.of(context).showSnackBar( // again we click checkbox it will show like this
      SnackBar(content: Text('Registered Successfully'))
    );

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => LoginLevel2(
                registeredName: _nameController.text,
                registeredPassword: _passwordController.text,//constructor la vara value ah class variable kku asign pannudhu
                registeredEmail: _emailController.text,
              )));

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
                padding: EdgeInsets.all(8.0.sh),
                child: Form(
        key: _formKey, // form kudutha key assign pannanum then idhula _formkey andha form ah identify pannum
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Create Account",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 3.0.sh,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),),
            SizedBox(height: 1.0.h,),

            Text('Fill your information detail and  register '
                '\nwith  your social account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 1.5.sh,fontWeight: FontWeight.w100),),
            SizedBox(height: 1.0.h,),

            Text('Name',style: TextStyle(fontSize: 1.9.sh,fontWeight: FontWeight.bold),),
            SizedBox(height: 1.0.h,),
            CommonTextFormField(
              controller: _nameController ,
              validator:(value){
                if(value == null || value.isEmpty){ //if email is empty it will show error if filled returns the value
                  return'Enter your name';
                }
                if(value.length != 7){
                  return'Name must be at least 7 characters';
                }
                return null;
              },
            ),
            SizedBox(height: 2.0.h),

           Text('Phone Number',style: TextStyle(fontSize: 1.9.sh,fontWeight: FontWeight.bold),),
            SizedBox(height: 1.0.h,),
            CommonTextFormField(
              controller: _phoneController,
                prefixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 2.0.w,),
                    Text("+91",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,fontSize: 2.0.sh),),
                    Icon(Icons.keyboard_arrow_down_rounded,
                      color: Colors.black,size: 2.0.sh,),
                  ],
                ),
              validator: (value){
                if(value == null  || value . isEmpty){
                  return "Please enter your phone number";
                }
                if(value.length !=10){
                  return "Number must be 10 digits";
                }
                if(value.length<10){
                  return " Enter a valid phone number";
                }
                return null;
              },
            ),
            SizedBox(height: 2.0.h),

           Text('Email',style: TextStyle(fontSize: 1.9.sh,fontWeight: FontWeight.bold),),
            SizedBox(height: 1.0.h,),
            CommonTextFormField(
                controller: _emailController,
                prefixIcon: Icon(Icons.email,color: Colors.grey,),
                validator: (value){
                  if(value == null || value.isEmpty)
                    return " Please enter your email";
                  final lowercaseStartRegex = RegExp(r'^[a-z]');
                  if (!lowercaseStartRegex.hasMatch(value)){
                    return 'Email must start with a lowercase letter';
                  }
                  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegex.hasMatch(value)) return 'Enter a valid email address';

                  return null;
                }
            ),
            SizedBox(height: 2.0.h),

            Text('Password',style: TextStyle(fontSize: 1.9.sh,fontWeight: FontWeight.bold),),
            SizedBox(height: 1.0.h,),
            CommonTextFormField(
                   controller: _passwordController,
                   obscureText: _isPasswordObscured,
                   suffixIcon: _isPasswordObscured ? Icons.visibility_off : Icons.visibility,
                   keyboardType: TextInputType.phone,
                   onSuffixIconPressed: () {
                     setState(() {
                       _isPasswordObscured = !_isPasswordObscured;
                     });
                   },
              validator: (value) {
                if (value == null || value.isEmpty)
                  return 'Please enter a password'; // validation success - null

                final hasCaps = RegExp(r'[A-Z]').hasMatch(value); // regexp - pattern matching
                final hasSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
                final hasDigits = RegExp(r'[0-9]').hasMatch(value);

                if (!hasCaps) return 'Must include capital letters';
                if (!hasSpecial) return 'Must include special characters';
                if (!hasDigits) return 'Must include numbers';
                if (value.length < 8) return 'Password must be at least 8 characters long';
                return null;
              },
               ),
            SizedBox(height: 2.0.h,),

            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  side: BorderSide(
                    color: Colors.blue,
                      style: BorderStyle.solid),
                  fillColor: WidgetStateProperty.resolveWith((states) { //its like declaring conditions whether checked or unchecked
                                                                       //this is used for mouse hover,button disable,button press,checkbox
                    return states.contains(WidgetState.selected)
                        ? Colors.blue   //  if i Checked
                        : Colors.white; //  if i Unchecked
                  }),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() { // UI update pannunga nu sollum flutter kku
                      isChecked = value!; // user click pannumbodhu vandha value ah ischeccked variable kku assign pannum
                    });
                  },
                ),
                Expanded(
                  child: Text.rich( // to change different text or colour to makw specific text clickable
                    TextSpan(
                      text: "Agree with ",
                      style: TextStyle(fontSize: 2.sh),
                      children: [
                        TextSpan( // text ahh different colour style pannalam
                          text: "Terms & Conditions",
                          style:TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer() // idha use panna oru text ah clickable aakalam
                            ..onTap = () { // cascade operator
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>  PolicyScreen(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.0.h,),

            CustomButton(
                text: "Sign Up",
                backgroundColor: Colors.blue,
                minimumSize: Size(10.w ,7.h),
                onPressed: () {
                 _submitForm();
                },),

            SizedBox(height: 4.0.h,),
            Row(
              children: [ //  expanded - occupy remaining space in row and column
                Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                SizedBox(width: 1.0.w,),
                Text('Or signup with',style: TextStyle(color: Colors.grey,fontSize: 1.8.sh,),),
                SizedBox(width: 1.0.w,),
                Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
              ],
            ),

            SizedBox(height: 4.0.h,),
            SocialIcon(
              isCircle: true,
              showInstagram: true,
              showGoogle: true,
              showFacebook: true,
              showApple: false,
            ),

            SizedBox(height: 3.0.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 2.0.sh),),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute( // navigate the screen one to another using route
                        builder: (context) => LoginLevel2(
                          registeredName: _nameController.text.toString(),
                          registeredPassword: _passwordController.text.toString(),
                          registeredEmail: _emailController.text.toString(),
                        ),
                      ),
                    );
                  },
                  child:  Text("Sign In",
                  style: TextStyle(color: Colors.blue,
                  fontSize: 2.0.sh),),
                ),
              ],
            ),
          ],
        ),
                ),

                ),
      ),
    );
  }

}
