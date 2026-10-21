import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class ForthFile extends StatefulWidget {
  const ForthFile({super.key});

  @override
  State<ForthFile> createState() => _ForthFileState();
}

class _ForthFileState extends State<ForthFile> {

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings',
        style: TextStyle(color: Colors.black,fontSize: 4.0.sh,fontWeight: FontWeight.w500,)),),
      body: SingleChildScrollView(child: Column(
        children: [
          Container(
            height: 19.0.h,
            width: 96.5.w,
            margin: EdgeInsets.only(left: 2.0.sh,right: 1.0.sh),
            decoration: BoxDecoration(color: Colors.orange.shade500,
                borderRadius: BorderRadius.circular(4.0.sh)),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding:  EdgeInsets.only(left: 2.0.sh),
                 child: CircleAvatar(
                   radius: 11.0.sh,
                   backgroundColor: Colors.orange.shade400,
                   child: Stack(
                     children: [
                       Positioned(
                           left: 3.3.sh,top: 3.0.sh,right: 2.0.sh,
                           child: CircleAvatar(
                         radius: 7.0.sh,
                             backgroundImage: AssetImage('asset/man.jpg'),
                       ))
                     ],
                   ),
                 ),
               ),
               SizedBox(width: 4.0.w,),
               Text('Bassirou \nGueye ',
                 style: TextStyle(color: Colors.white,
                     fontSize: 3.4.sh,fontWeight: FontWeight.bold),)
             ],
           )
          ),

          ListTile(
            title:  Text('Appearance',
              style: TextStyle(
                  fontSize: 2.0.sh,
                  fontWeight: FontWeight.bold),),
          subtitle: Text(
            'Make Ziar App yours',
            style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
            print("clicked");
            },
            leading: CircleAvatar(backgroundImage: AssetImage('asset/man.jpg')),
          ),

          ListTile(title:  Text('Privacy',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            subtitle: Text('Lock Ziar App to improve your privacy',style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
              print("Your privacy is maintained ");
            },
            leading: CircleAvatar(backgroundImage: AssetImage('asset/man.jpg')),
          ),

          ListTile(title:  Text('DarkMode',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            subtitle: Text('Automatic',style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
            //trailing: Icon(Icons.toggle_off_outlined,size: 8.0.sh,color: Colors.grey,),
            trailing: Switch(
              value: isDark,
              onChanged: (val) {
                setState(() {
                  isDark = val;
                });
              },
            ),
            leading: CircleAvatar(backgroundImage: AssetImage('asset/man.jpg')),
          ),

          ListTile(title:  Text('About',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            subtitle: Text('Learn more about Ziar App ',style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
              print("Learn More");
            },
            leading: CircleAvatar(backgroundImage: AssetImage('asset/man.jpg')),
          ),

          ListTile(title:  Text('Send Feedback',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            subtitle: Text('Let us know how we can make Ziar app ',style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
              print("Successfully completed");
            },
            leading: CircleAvatar(backgroundImage: AssetImage('asset/man.jpg')),
          ),

          Padding(
            padding: EdgeInsets.only(right: 35.sh),
            child: Text('Account',
              style: TextStyle(
                  fontSize: 3.0.sh,
                  fontWeight: FontWeight.bold),),
          ),
          ListTile(title:  Text('Sign Out',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
              print("Signed Out");
            },
            leading: Icon(Icons.assignment_return_outlined),
          ),
          ListTile(title:  Text('Change email',style: TextStyle(fontSize: 2.0.sh,fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.keyboard_arrow_right_rounded,size: 5.0.sh,color: Colors.grey,),
            onTap: (){
              print("Changed Email Successfully");
            },
            leading: Icon(Icons.swap_horiz),
          ),

        ],
      ),
      ),
    );
  }
}



