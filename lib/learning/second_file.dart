import 'package:flutter/material.dart';

class SecondFile extends StatefulWidget {
  const SecondFile({super.key});

  @override
  State<SecondFile> createState() => _SecondFileState();
}

class _SecondFileState extends State<SecondFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child:
      Column(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            height: 28.0,
            width: 500.0,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius:BorderRadius.circular(8.0),),
           child: Stack(
            alignment: Alignment.center,
             children: [
               Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
               Icon(Icons.lock,color: Colors.grey,size: 15.0,),
               SizedBox(width: 5,),
               Text('pxkitties.com',
                 style: TextStyle(
                     color: Colors.grey.shade500,
                     fontSize: 15.0 ),),
             ],),
               Positioned(
                   right: 30,
                   child: Icon(
                     Icons.refresh,color: Colors.grey,))
             ],
           ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 35.0,
            width: 500.0,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),),
           alignment: Alignment.centerLeft,
           padding: EdgeInsets.only(left: 8.0),
            child: Icon(Icons.menu,color: Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 350.0,top: 12.0),
            child: Text('Terms of Service',
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 20, ),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 135.0),
            child: Text(
              '\nThe following outlines the terms of use of the '
                  '\npxKitties websites.Before using any of the pxKitties services,'
                  '\nyou are required to read,understand, and agree to'
                  ' \nthese terms.',
    textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.grey.shade800,fontSize: 13.0,),),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 220.0,
            width: 500.0,
            color: Colors.grey.shade300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12,width: 12,),
                Text('Content Removal and Disabling or Terminating Your'
                    ' \n Account',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey.shade700),),

                SizedBox(height: 12,width: 12,),
                Text('Nature is the ultimate life-support system and a masterpiece '
                    '\n of interconnected living and non-living elements. '
                    '\n It provides us with the essential air we breathe, '
                    '\n the water we drink, and the food we eat. '
                    '\n More than a mere resource, the natural world inspires mental clarity,'
                    '\n offering a grounding, peaceful escape from the modern, '
                    '\n fast-paced world.',style: TextStyle(
                    fontSize: 12.0,
                    height: 1.5,
                    color: Colors.grey.shade600),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,right: 350.0),
            child: Text('Updating These Terms',
              style: TextStyle(
                  color: Colors.grey.shade700,fontSize: 15.0),),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 180.0,top: 15.0),
            child: Text('We can change these rules whenever we like by posting an '
                '\n update on pxKitties, whether you notice it or not',
             style: TextStyle(fontSize: 12.0,
                 height: 1.5,
                 color: Colors.grey.shade600
             ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 28.0,
                width: 28.0,
                color: Colors.grey.shade400,
                child: Icon(Icons.close,color: Colors.pink.shade800,size: 20.0,),),
            SizedBox(width: 12,),
              Text('I agree to the Terms of Service',
                style: TextStyle(color: Colors.grey.shade600,fontSize: 15),)
            ],
          ),
          SizedBox(height: 12,),
          Container(
            height: 40.0,
            width: 150.0,
            color: Colors.pink.shade800,
          child: Padding(
            padding: const EdgeInsets.only( left: 55.0,top: 9.0),
            child: Text('Agree',
              style: TextStyle(
                  color: Colors.white,fontSize: 13.0),),
          ),),
          SizedBox(height: 30,),
        ],
      ),
      ),

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
