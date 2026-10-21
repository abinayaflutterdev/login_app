import 'package:flutter/material.dart';

class FirstFile extends StatefulWidget {
  const FirstFile({super.key});

  @override
  State<FirstFile> createState() => _FirstFileState();
}

class _FirstFileState extends State<FirstFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple.shade800,
            leading: Icon(Icons.menu,color: Colors.white,),
        title: Container(
          height: 25.0,
          width: 95.0,
          decoration: BoxDecoration(
              color: Colors.purple.shade500,
              borderRadius: BorderRadius.circular(7.0),),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text('Page title',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0 ),),
          ),
          ),
        actions:[
          Icon(Icons.heart_broken,color: Colors.white,),
          SizedBox(width: 12,),
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 12,),
          Icon(Icons.more_vert,color: Colors.white,),
        ],


      ),

    );
  }
}
