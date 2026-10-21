import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckFile extends StatefulWidget {
  const CheckFile({super.key});
  @override
  State<CheckFile> createState() => _CheckFileState();
}

class _CheckFileState extends State<CheckFile> {

  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.deepPurple.shade300,
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade500,
        title:
        Center(
          child: Text('Simple Todo',
          style: TextStyle(
              color: Colors.white,
              fontSize: 3.0.sh),),
        ),),
      body: SingleChildScrollView(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 2.0.h,),
          Center(
            child: Container(
              height: 10.0.sh,
              width: 90.0.w,
              decoration: BoxDecoration(
                  color: Colors.deepPurple.shade500,
                  borderRadius: BorderRadius.circular(2.0.sh)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 2.5.w,),
                  Checkbox(
                    value: _isChecked1,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked1 = newValue ?? false;
                      });
                      },
                   checkColor: Colors.purple,
                    side: BorderSide(color: Colors.white),
                    activeColor: Colors.white,
                  ),
                  Text('Geeks for Geeks',style: TextStyle(fontSize: 2.5.sh,color: Colors.white),),
                ],
              ),
            ),
          ),
      SizedBox(height: 2.5.h,),
      Container(
        height: 10.0.sh,
        width: 90.0.w,
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade500,
            borderRadius: BorderRadius.circular(2.0.sh)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 2.5.w,),
            Checkbox(
              value: _isChecked2,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked2 = newValue ?? false;
                });
              },
              checkColor: Colors.purple,
              side: BorderSide(color: Colors.white),
              activeColor: Colors.white,
            ),
            Text('Play Football',style: TextStyle(fontSize: 2.5.sh,color: Colors.white),),
          ],
        ),
      ),
      SizedBox(height: 2.5.h,),
      Container(
        height: 10.0.sh,
        width: 90.0.w,
        decoration: BoxDecoration(
            color: Colors.deepPurple.shade500,
            borderRadius: BorderRadius.circular(2.0.sh)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 2.5.w,),
            Checkbox(
              value: _isChecked3,
              onChanged: (bool? newValue) {
                setState(() {
                  _isChecked3 = newValue ?? false;
                });
              },
              checkColor: Colors.purple,
              side: BorderSide(color: Colors.white),
              activeColor: Colors.white,
            ),

            Text('Drink Coffee',style: TextStyle(fontSize: 2.5.sh,color: Colors.white),),
          ],
        ),
      ),
          SizedBox(height: 2.5.h,),
          Container(
            height: 10.0.sh,
            width: 90.0.w,
            decoration: BoxDecoration(
                color: Colors.deepPurple.shade500,
                borderRadius: BorderRadius.circular(2.0.sh)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 2.5.w,),
                Checkbox(
                  value: _isChecked4,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked4 = newValue ?? false;
                      print(_controller.text.toString() );
                    });
                  },
                  checkColor: Colors.purple,
                  side: BorderSide(color: Colors.white),
                  activeColor: Colors.white,
                ),

                Text('Play Football',style: TextStyle(fontSize: 2.5.sh,color: Colors.white),),
              ],
            ),
          ),
          SizedBox(height: 31.0.h,),
          Padding(
            padding: EdgeInsets.only(left: 3.0.sh,right: 13.0.sh),
            child: TextField(
              controller: _controller,
              showCursor: true,
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                hintText: 'Add a new todo items',
               contentPadding: EdgeInsets.symmetric(
                 horizontal: 1.0.sh,
                 vertical: 1.5.sh
               ),
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular( 1.0.sh),
                  borderSide: BorderSide.none
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ],
      ),),
      floatingActionButton: FloatingActionButton(onPressed: (
          ) {
        setState(() {
          print(_isChecked1);
          print(_controller.text.toString());
        });

        _isChecked2;
        _isChecked3;
        _isChecked4;
      },
        child: const Icon(Icons.add,color: Colors.deepPurple,),
      ),

    );
  }

}
