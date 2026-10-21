import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ProfileFile extends StatefulWidget {
  const ProfileFile({super.key});

  @override
  State<ProfileFile> createState() => _ProfileFileState();
}

class _ProfileFileState extends State<ProfileFile> {

  List<String> settingNames = [
  "Name",
  "Username",
  "User ID",
  "E-mail",
  "Phone number",
  "Gender",
  "Date of Birth"
  ];

  List<String> settingTitles = [
    "Coding with T",
    "cccing_with_T",
    "48888",
    "cccing_with_t",
    "*92-317-8059528",
    "Mode",
    "10 oct,884"
  ];

   bool isDark = false;

  Widget buildTile(int index){
    return ListTile(
    onTap: () {
      print("yes");
    },
      title: Row(
        children: [
          Expanded(child:  Text(settingNames[index],
            style: TextStyle(color: Colors.grey.shade400,fontSize: 2.0.sh),
          ),),

         Expanded(child:Text(settingTitles[index],
           textAlign: TextAlign.start,
           style: TextStyle(color: Colors.white,fontSize: 2.0.sh),
         ), )

        ],
      ),

      trailing: settingNames[index] == "Dark Mode"
          ? Switch(
        value: isDark,
        onChanged: (value) {
          setState(() {
            isDark = value;
          });
        },
      )
          : settingNames[index] == "User ID"
          ? Icon(
        Icons.content_copy, // அல்லது Icons.copy
        size: 15,
        color: Colors.grey,
      )
          : Icon(
        Icons.arrow_forward_ios,
        size: 15,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          brightness: Brightness.dark,
      ),
    home:Scaffold(appBar:
      AppBar(
        title: Padding(
          padding:  EdgeInsets.all(3.0.sh),
          child: Text('Profile',
            style: TextStyle(
                fontSize: 3.0.sh,color: Colors.white),),),
       ),

      body: SingleChildScrollView(child: Column(children: [Center(
        child: CircleAvatar(
          radius: 5.0.sh,
          backgroundImage: AssetImage('asset/man.jpg'),),
      ),
        SizedBox(height: 3.0.h,),
        Center(
          child: Text('Abinaya',
            style: TextStyle(
                fontSize: 2.0.sh,
                color: Colors.white,
                fontWeight: FontWeight.w400),),
        ),
        SizedBox(height: 2.0.h,),
       Container(
         decoration: BoxDecoration(
           border: Border(
             top: BorderSide(
               color: Colors.white24,
               width: 1,

             ),
           ),
         ),
         child: Card(
           margin: EdgeInsets.all(2.0.sh),
           child: Column(
             children: [
               buildTile(0),
               buildTile(1),
               Divider(height: 1, color: Colors.white24),
             ],
           ),
         ),
       ),
        Card(
          margin: EdgeInsets.all(2.0.sh),
          child: Column(
            children: [
              buildTile(2),
              buildTile(3),
              buildTile(4),
              buildTile(5),
              buildTile(6),
              Divider(height: 1, color: Colors.white24),
            ],
          ),
        ),
        SizedBox(height: 3.0.h,),
        Center(child:TextButton(onPressed: () {
            print("thankyou");
        },
          child: Text('Delete  Account',
          style: TextStyle(
              fontSize: 2.3.sh,
              color: Colors.red.shade800),),),)
      ],
    ),
      ),
    ),
    );

  }
}
