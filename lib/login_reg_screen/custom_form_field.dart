import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latest_flutter/login_reg_screen/terms_screen.dart';
import 'package:sizer/sizer.dart';


class CustomFormField extends StatefulWidget {
  const CustomFormField({super.key});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {

  final List<Map<String, dynamic>> _socialButtons = [
    {'name': 'Instagram', 'icon': Icons.camera_alt_outlined, 'color': Colors.pink},
    {'name': 'Facebook', 'icon': Icons.facebook, 'color': Colors.blue},
    {'name': 'WhatsApp', 'icon': Icons.phone_android, 'color': Colors.green},
  ];

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _obscurePassword = true;
  bool _isAgreed = false;

  @override
  void dispose(){
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _handleSignUp(){
    if(_formKey.currentState!.validate()){
      if(!_isAgreed){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content:
            Text('Agree with terms and condition')));
        return;
      }
      Navigator.push(
          context,
          MaterialPageRoute (builder: (context)=> TermsScreen(
            username: _nameController.text ,
            password: _passwordController.text,
            email: _emailController.text,
          )),
    );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(8.0.sh),
        child: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 2.0.h),
              child: Form(
                key: _formKey,
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
                    TextFormField(
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(0.1.sh),
                             gapPadding: 20,
                             borderSide: BorderSide(color: Colors.grey.shade400)
                           ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.1.sh),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.grey.shade400,
                          )
                        ),
                      ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return "Please enter your name" ;
                        }
                        if(value.length !=7){
                          return "Name must be exactly 7 characters" ;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 2.0.h),

                    Text('Phone Number',style: TextStyle(fontSize: 1.9.sh,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.0.h,),
                    TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: "Enter Phone Number",
                          hintStyle: TextStyle(fontSize: 2.0.sh,color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.1.sh),
                            gapPadding: 20,
                            borderSide: BorderSide(
                                color: Colors.grey.shade400),
                          ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.1.sh),
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey.shade400,
                            )
                        ),
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
                          )
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
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.1.sh),
                gapPadding: 20,
                borderSide: BorderSide(
                    color: Colors.grey.shade400),
              ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.1.sh),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey.shade400,
                              )
                          ),
                      ),
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
                    TextFormField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: _obscurePassword,
                      cursorColor: Colors.black,
                      showCursor: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.1.sh),
                          gapPadding: 20,
                          borderSide: BorderSide(
                              color: Colors.grey.shade400),
                        ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.1.sh),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey.shade400,
                              )
                          ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                    ),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter a password';

                        final hasCaps = RegExp(r'[A-Z]').hasMatch(value);
                        final hasSpecial = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value);
                        final hasDigits = RegExp(r'[0-9]').hasMatch(value);

                        if (!hasCaps) return 'Must include capital letters';
                        if (!hasSpecial) return 'Must include special characters';
                        if (!hasDigits) return 'Must include numbers';
                        if (value.length < 8) return 'Password must be at least 8 characters long';
                        return null;
                      },
                    ),
                    SizedBox(height: 4.0.h),

                    FormField<bool>(
                      builder: (state){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(value: _isAgreed, onChanged: (value) {
                                  setState(() {
                                    _isAgreed = value ?? false;
                                    state.didChange(value);
                                  });
                                },),
                                Expanded(child: RichText(
                                    text: TextSpan(
                                      children:[
                                        TextSpan(
                                          text: "Agree with",
                                          style: TextStyle(
                                              fontSize: 2.0.sh,color: Colors.black),
                                        ),
                                        TextSpan(
                                          text:"Terms & Conditions",
                                          style: TextStyle(
                                              fontSize: 2.0.sh,color: Colors.blue,
                                          ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = (){
                                                Navigator.push(context,
                                                    MaterialPageRoute(builder: (context)=>TermsScreen(
                                                      username: _nameController.text,
                                                      password: _passwordController.text,
                                                      email: _emailController.text,
                                                    ),));
                                              }
                                        ),
                                      ]
                                    ),
                                ),
                                ),
                              ],
                            ),
                            SizedBox(height: 2.0.h,),
                            Center(
                              child: ElevatedButton(
                                onPressed: _handleSignUp,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  minimumSize: Size(70.0.w,7.0.h),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(1.0.sh),),
                                ),
                                child: Text('Sign Up',
                                  style: TextStyle(
                                      fontSize: 2.0.sh,
                                  ),),

                              ),
                            ),
                            SizedBox(height: 4.0.h,),
                            Row(
                              children: [
                                Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                                SizedBox(width: 1.0.w,),
                                Text('Or signup with',style: TextStyle(color: Colors.grey,fontSize: 1.8.sh,),),
                                SizedBox(width: 1.0.w,),
                                Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                              ],
                            ),

                          ],
                        );
                      },
                    ),
                    SizedBox(height: 4.0.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        _socialButtons.length,
                            (index) {
                          final social = _socialButtons[index];

                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 8.0.w,
                                height: 8.0.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                    width: 0.2.w,
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    social['icon'],
                                    color: social['color'],
                                    size: 3.0.sh,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 4.0.h),

                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(color: Colors.grey,fontSize: 2.0.sh),
                          children: [
                            TextSpan(
                                text: "Sign up",
                                style: TextStyle(color: Colors.blue,fontSize: 2.0.sh),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = (){
                                    Navigator.push(
                                        context, MaterialPageRoute(
                                      builder: (context)=> TermsScreen(
                                        username: _nameController.text,
                                        password: _passwordController.text,
                                        email: _emailController.text,
                                      ),));
                                  }
                            )
                          ],
                        ),),
                    )
                  ],
                ),
              ),
              ),)),
      )
    );
  }
}
