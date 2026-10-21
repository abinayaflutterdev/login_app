import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ThirdFile extends StatefulWidget {
  const ThirdFile({super.key});

  @override
  State<ThirdFile> createState() => _ThirdFileState();
}

class _ThirdFileState extends State<ThirdFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child:
      SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 4.6.h,
                  width: 90.0.w,
                  margin: EdgeInsets.only(left: 0.7.sh,top: 2.0.sh, bottom: 2.0.sh),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius:BorderRadius.only(
                      topLeft: Radius.circular(1.0.sh),
                        bottomLeft: Radius.circular(1.0.sh))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock,color: Colors.grey,size: 2.0.sh,),
                      SizedBox(width: 1.0.sh,),
                      Text('pxkitties.com',
                        style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 2.1.sh),),
                    ],
                  ),
                ),
                Container(
                  height: 4.6.h,
                  width: 6.7.w,
                  margin: EdgeInsets.only(right: 0.7.sh),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius:BorderRadius.only(
                          topRight: Radius.circular(1.0.sh),
                          bottomRight: Radius.circular(1.0.sh))),
                  child: Icon(Icons.refresh,color: Colors.grey,size: 4.0.sh,)
                ),
              ],
            ),
            Container(
              height: 0.2.h,
              width: 100.0.w,
              color: Colors.grey.shade300
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.0.sh,top: 1.0.sh),
                    child: Icon(Icons.menu_sharp, color: Colors.black,size: 3.4.sh,))
              ],
            ),
            Container(
                height: 0.2.h,
                width: 100.0.w,
                margin: EdgeInsets.only(top: 1.0.sh),
                color: Colors.grey.shade300
            ),
            SizedBox(height: 1.0.h),
            Padding(
              padding: EdgeInsets.only(left: 1.0.sh),
              child: Text('Terms of Service',
                style: TextStyle(
                    color: Colors.grey.shade500,fontSize: 2.9.sh,fontWeight: FontWeight.w700),),
            ),

            Padding(
              padding: EdgeInsets.only(left: 1.4.sh, right: 1.4.sh),
              child: Text('\nThe following outlines the terms of use of the pxKitties'
                  'websites.Before using any of the pxKitties services,'
                'you are required to read,understand, and agree to'
                ' these terms.',style: TextStyle(fontSize: 2.1.sh,color: Colors.grey.shade600),),
            ),
            SizedBox(height: 1.6.h,),
            Container(
              height: 81.0.h,
              width: 100.0.w,
              color: Colors.grey.shade200,
              child: Padding(
                padding: EdgeInsets.only(top: 2.5.sh,left: 1.5.sh),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Content Removal and Disabling or Terminating Your'
                        ' Account',
                      style: TextStyle(
                          fontSize: 2.3.sh,
                          color: Colors.grey.shade500,fontWeight: FontWeight.w500),),

                    SizedBox(height: 2.0.h,),
                    Padding(
                      padding: EdgeInsets.only(left: 1.4.sh, right: 1.3.sh,bottom: 1.0.sh),
                      child: Text('Nature is the ultimate life-support system and a masterpiece '
                      'of interconnected living and non-living elements. '
                      'It provides us with the essential air we breathe, '
                      'the water we drink, and the food we eat. '
                          'More than a mere resource, the natural world inspires mental clarity,'
                          'offering a grounding, peaceful escape from the modern, '
                          'fast-paced world.',
                        style: TextStyle(fontSize: 2.0.sh,color: Colors.grey.shade600),),
                    ),
                    Container(
                        height: 0.2.h,
                        width: 100.0.w,
                        margin: EdgeInsets.only(top: 1.0.sh),
                        color: Colors.grey.shade300
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.6.sh),
                      child: Text('Updating These Terms',
                        style: TextStyle(
                            fontSize: 2.3.sh,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.0.sh,top: 2.0.sh,right: 1.0.sh),
                      child: Text('We can change these rules whenever we like by posting an '
                          'update on pxKitties, whether you notice it or not.',
                        style: TextStyle(color: Colors.grey.shade600,
                            fontSize: 2.0.sh
                        ),
                      ),
                    ),
                    SizedBox(height: 4.0.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.clear,
                              size: 20,
                              color: Color(0xFFFF5FA2),
                            ),
                          ),
                        ),
                        SizedBox(width: 2.0.w,),
                        Text('I agree to the Terms of Service',
                          style: TextStyle(fontSize: 1.9.sh,color: Colors.grey.shade500),)
                      ],
                    ),
                    SizedBox(
                      height: 2.0.h,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Removes all rounded corners
                          ),
                        ),
                          child: Text("Agree", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Container(
                      height: 5.0.h,
                      width: 100.0.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),),
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,

      type: BottomNavigationBarType.fixed,
      onTap: (index){},
      items: const[BottomNavigationBarItem(
        icon: Icon(
          Icons.chevron_left,
          color: Colors.blue,
        ),
        label: 'back',
      ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.send_to_mobile,
            color: Colors.blue,
          ),
          label: 'send',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.menu_book,
            color: Colors.blue,
          ),
          label: 'book',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmarks,
            color: Colors.blue,
          ),
          label: 'copy',
        ),
      ],),
    );
  }
}
