import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latest_flutter/login_reg_screen/custom_form_field.dart';
import 'package:latest_flutter/login_reg_screen/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'forgot_password_screen.dart';


class TermsScreen extends StatefulWidget {

  final String username;
  final String password;
  final String email;

  const TermsScreen({
    super.key,
   required this.username,
    required this.password,
    required this.email
  });

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen>{

  final List<Map<String, dynamic>> _socialButtons = [
    {'name': 'Google', 'icon': Icons.g_mobiledata, 'color': Colors.pink},
    {'name': 'Apple', 'icon': Icons.apple, 'color': Colors.blue},
  ];

  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void dispose(){
  _usernameController.dispose();
  _passwordController.dispose();
  super.dispose();
  }

  void _submitForm() {
        if (_formKey.currentState!.validate()) {

          if(_usernameController.text !=  widget.username){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Username does not match"),
            ),
            );
            return;
          };
          if(_passwordController.text !=  widget.password){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Password does not match"),
              ),
            );
            return;
          };
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Already you have an account."),
              duration: Duration(seconds: 2),
              behavior: SnackBarBehavior.floating,
            ),
          );

         Navigator.pushReplacement(
          context,
           MaterialPageRoute(
          builder: (context) => SplashScreen(),
          ),
         );
       }
      }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.grey.shade300,
        body: SafeArea(child: Center(
             child: SingleChildScrollView(
             padding: EdgeInsets.symmetric(horizontal: 2.0.h),
                child: Form(
                  key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                        Icon(Icons.lock,
                             color: Colors.black,
                             size: 10.0.sh,),
                        SizedBox(height: 6.0.h,),

                       Text('Welcome back you have been misssed!',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey.shade500,
                          fontSize: 2.0.sh,
                           ),
                       ),
                       SizedBox(height: 3.0.h,),

                       TextFormField(
                         controller: _usernameController,
                         decoration: InputDecoration(
                           hintText: "Username",
                           hintStyle: TextStyle(fontSize: 2.4.sh,color: Colors.grey.shade500),
                           filled: true,
                           fillColor: Colors.grey.shade200,
                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(0.1.sh),
                               gapPadding: 20,
                               borderSide: BorderSide(color: Colors.grey.shade400,),
                           ),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(0.1.sh),
                               borderSide: BorderSide(
                                 width: 1,
                                 color: Colors.grey.shade400,
                               ),
                           ),
                       ),
                         validator: (value){
                           if(value == null || value.trim().isEmpty){
                             return "Please enter your username";
                           }
                           return null;
                         },
                       ),
                       SizedBox(height: 2.0.h,),

                       TextFormField(
                         controller: _passwordController,
                         decoration: InputDecoration(
                           hintText: "Password",
                           hintStyle: TextStyle(fontSize: 2.4.sh,color: Colors.grey.shade500),
                           filled: true,
                           fillColor: Colors.grey.shade200,
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(0.1.sh),
                             gapPadding: 20,
                             borderSide: BorderSide(color: Colors.grey.shade400,),
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
                           if(value == null|| value.isEmpty){
                             return"Please enter your password";
                           }
                           return null;
                       },
                       ),
                       SizedBox(height: 2.0.h,),

                       Align(
                         alignment: Alignment.bottomRight,
                         child: TextButton(
                           onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen(
                               registeredEmail: widget.email,
                             )));
                           },
                           child: Text('Forgot Password',
                           style: TextStyle(fontSize: 2.0.sh,color: Colors.grey.shade500),
                           ),
                         ),
                       ),
                       SizedBox(height: 2.0.h,),
                       
                       ElevatedButton(onPressed: _submitForm,
                           style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.brown.shade900,
                             minimumSize: Size(4.0.w, 9.0.h),
                             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1.0.sh))
                           ),
                           child: Text('Sign In',
                             style: TextStyle(
                                 color: Colors.white),)),
                       SizedBox(height: 6.0.h,),

                       Row(
                         children: [
                           Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                           SizedBox(width: 1.0.w,),
                           Text('Or continue with',style: TextStyle(color: Colors.grey,fontSize: 1.8.sh,),),
                           SizedBox(width: 1.0.w,),
                           Expanded(child: Divider(thickness: 0.1.sh,color: Colors.grey,),),
                         ],
                       ),
                       SizedBox(height: 4.0.h,),

                       Wrap(
                         alignment: WrapAlignment.center,
                           children: List.generate(
                             _socialButtons.length,
                                 (index) {
                               final social = _socialButtons[index];
                               return Padding(
                                 padding: EdgeInsets.symmetric(horizontal: 2.w),
                                 child: GestureDetector(
                                   onTap: () {},
                                   child: Container(
                                     width: 10.0.w,
                                     height: 8.0.h,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.rectangle,
                                       borderRadius: BorderRadius.circular(1.5.sh),
                                       color: Colors.grey.shade200,
                                       border: Border.all(
                                         color: Colors.grey.shade300,
                                         width: 0.2.w,
                                       ),
                                     ),
                                     child: Center(
                                       child: Icon(
                                         social['icon'],
                                         color: social['color'],
                                         size: 7.0.sh,
                                       ),
                                     ),
                                   ),
                                 ),
                               );
                             },
                           ),
                         ),
                       SizedBox(height: 4.0.h,),

                       Center(
                         child: RichText(
                           text: TextSpan(
                             text: "Not a member?",
                             style: TextStyle(color: Colors.grey,fontSize: 2.0.sh),
                             children: [
                               TextSpan(
                                   text: "Register now",
                                   style: TextStyle(color: Colors.blue,fontSize: 2.0.sh),
                                   recognizer: TapGestureRecognizer()
                                     ..onTap = (){
                                       Navigator.push(
                                           context, MaterialPageRoute(
                                         builder: (context)=> CustomFormField(),));
                                     }
                               )
                             ],
                           ),),
                       ),





                    ],
                     ),
                    ),
                   ),
                    )),
          );
          }
        }




