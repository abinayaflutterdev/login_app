import 'package:flutter/material.dart';
import 'package:latest_flutter/login_reg_screen/custom_file.dart';
import 'package:latest_flutter/login_reg_screen/custom_form_field.dart';
import 'package:latest_flutter/login_reg_screen/resetSuccessScreen.dart';
import 'package:sizer/sizer.dart';

class ForgotPasswordScreen extends StatefulWidget {
  final String registeredEmail;

  const ForgotPasswordScreen({
    super.key,
  required this.registeredEmail,
  });

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  final String _registeredEmail = "user@test.com";
  String _validationMessage = "";
  Color _messageColor = Colors.transparent;
  bool _isEmailValid = false;

  void _checkEmail(String value){
    if(value.trim() == widget. registeredEmail){
      setState(() {
        _validationMessage = "Reset your password";
        _messageColor = Colors.green;
        _isEmailValid = true;
      });
    } else if(value.trim().isEmpty){
      setState(() {
        _validationMessage ="";
        _messageColor = Colors.transparent;
        _isEmailValid = false;
      });
    } else {
      setState(() {
        _validationMessage = "";
        _messageColor = Colors.transparent;
        _isEmailValid = false;
      });
    }
  }
  void _handleSubmit(){
    if(_formKey.currentState!.validate()&&_isEmailValid) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResetSuccessScreen()));
    } else if (!_isEmailValid &&
        _emailController.text.trim().isNotEmpty) {
      setState(() {
        _validationMessage = "We cannot find your email";
        _messageColor = Colors.red;
      });

    }
  }
   @override
   void dispose(){
    _emailController.dispose();
    super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8.0.sh),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.error_outline,
             color: Colors.blue,
              size: 10.0.sh,
            ),
            SizedBox(height: 3.0.h,),

            Text('Forgot Password',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 3.0.sh,
            color: Colors.black,
              fontWeight: FontWeight.bold
            ),
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
            SizedBox(height: 2.0.h,),

            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
               prefixIcon: Icon(Icons.email,size: 3.0.sh,color: Colors.grey.shade800,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1.0.sh)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.1.sh),
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.grey.shade400,
                    )
                ),
              ),
              onChanged: _checkEmail,
              validator: (value){
                if (value == null || value.trim().isEmpty){
                  return "Please enter your email";
                }
                if(!_isEmailValid){
                  return "Please register a valid matching email";
                }
                return null;
              },
            ),
            SizedBox(height: 2.0.sh,),

            Text(
              _validationMessage,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: _messageColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            ElevatedButton(onPressed: _handleSubmit,
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: Colors.green.shade500,
                  foregroundColor: Colors.white,
                  minimumSize: Size(10.0.w, 7.0.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(1.0.sh),)
                ),
                child: Text('Submit',
                style: TextStyle(
                  fontSize: 2.0.sh,
                fontWeight: FontWeight.bold,
                ),
                )),
           SizedBox(height: 4.0.h,),

           TextButton(onPressed: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => CustomFormField())
             );
           },
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.chevron_left,
                   color: Colors.black,
                   ),
                   Text('Back to Login',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   fontSize: 2.0.sh,
                     color: Colors.grey
                   ),
                   ),
                 ],
               ),
           ),


          ],
        ),
      ),
      )

    );
  }
}
