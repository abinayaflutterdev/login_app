import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OtpFile extends StatefulWidget {
  const OtpFile({super.key});

  @override
  State<OtpFile> createState() => _OtpFileState();
}

class _OtpFileState extends State<OtpFile> {

  String otp = "";
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 8.0.sh),
              child: Text('OTP Verification',
                style: TextStyle(
                  fontSize: 2.8.sh,color: Colors.grey,fontWeight: FontWeight.w400,
                ),),
            ),
          ),
          SizedBox(height: 4.0.h,),
          Text('OTP Verification',
            style: TextStyle(
                fontSize: 3.2.sh,color: Colors.black,fontWeight: FontWeight.w600
            ),),
          SizedBox(height: 1.0.h,),
          Text('We sent your code to +1 898 860 *** ',
          style: TextStyle(fontSize: 1.8.sh,color: Colors.grey),
          ),
         Text('This code will expired in 00:30',
         style: TextStyle(fontSize: 1.8.sh,color: Colors.grey),
         ),
          Padding(
            padding:  EdgeInsets.all(4.0.sh),
            child: PinCodeTextField(
              controller: _controller,
              appContext: context,
                length: 4,
            keyboardType: TextInputType.number,
            showCursor: true,
            cursorColor: Colors.grey,
              pinTheme: PinTheme(shape: PinCodeFieldShape.box,
                  fieldHeight: 6.5.h,
                  fieldWidth: 13.5.w,

                  inactiveColor: Colors.grey,
                  inactiveFillColor: Colors.white,

                  activeColor: Colors.grey,
                  activeFillColor: Colors.white,

                  selectedColor: Colors.red,
                  selectedFillColor: Colors.grey,

                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(
            width: 90.0.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange.shade800,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
    ),
                onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Your submitted OTP is ${_controller.text.toString()}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
              duration: Duration(seconds: 5),
              backgroundColor: Colors.green,
              ));
            }, child: Text('Submit',
              style: TextStyle(
                fontSize: 2.0.sh,
              color: Colors.white
              ),) ),
          ),

        ],

      ),
    );
  }
}
