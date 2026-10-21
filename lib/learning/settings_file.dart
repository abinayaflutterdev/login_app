import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class SettingsFile extends StatefulWidget {
  const SettingsFile({super.key});

  @override
  State<SettingsFile> createState() => _SettingsFileState();
}

class _SettingsFileState extends State<SettingsFile> {

  List<String> settingNames = [
    "Appearance",
    "Privacy",
    "Dark Mode",
    "About",
    "Send Feedback",
    "Sign Out",
    "Change Email",
  ];

  List<IconData> settingIcons = [
    Icons.palette,
    Icons.fingerprint,
    Icons.dark_mode,
    Icons.info,
    Icons.feedback,
    Icons.logout,
    Icons.email,
  ];

  List<String> subtitles = [
    "Make App Yours",
    "Improve your privacy",
    "Automatic",
    "Learn more about app",
    "Send your feedback",
    "Logout from account",
    "Update email address",
  ];

  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings',
          style: TextStyle(color: Colors.black,
            fontSize: 4.0.sh,
            fontWeight: FontWeight.w500,)),),
      body: SingleChildScrollView(child: Column(
          children: [
            Container(
              height: 19.0.h,
              width: 96.5.w,
              margin: EdgeInsets.only(left: 2.0.sh, right: 1.0.sh),
              decoration: BoxDecoration(color: Colors.orange.shade500,
                  borderRadius: BorderRadius.circular(4.0.sh)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.0.sh),
                    child: CircleAvatar(
                      radius: 11.0.sh,
                      backgroundColor: Colors.orange.shade400,
                      child: Stack(
                        children: [
                          Positioned(
                              left: 3.3.sh, top: 3.0.sh, right: 2.0.sh,
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
                        fontSize: 3.4.sh, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Card(
                  child: Column(
                    children: [
                      buildTile(0),
                      buildTile(1),
                      buildTile(2),
                    ],
                  ),
                ),

                const SizedBox(height: 8),

                Card(
                  child: buildTile(3),
                ),
                const SizedBox(height: 8),

                Card(
                  child: buildTile(4),
                ),

                const SizedBox(height: 8),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 8),

                Card(
                  child: Column(
                    children: [
                      buildTile(5),
                      buildTile(6),
                    ],
                  ),
                ),
              ],
            )
          ],
      ),
      ),
    );
  }

  Widget buildTile(int index) {
    return ListTile(
      onTap: () {
        print("yes");
      },
      title: Text(
        settingNames[index],
        style: TextStyle(
          fontSize: 2.0.sh,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitles[index],
        style: TextStyle(
          fontSize: 1.7.sh,
          color: Colors.grey,
        ),
      ),
      leading: Icon(settingIcons[index]),
      trailing: settingNames[index] == "Dark Mode"
          ? Switch(
        value: isDark,
        onChanged: (value) {
          setState(() {
            isDark = value;
          });
        },
      )
          : Icon(
        Icons.arrow_forward_ios,
        size: 3.0.sh,
        color: Colors.grey,
      ),
    );
  }

}

// ListView.builder(
// shrinkWrap: true,
// physics: const NeverScrollableScrollPhysics(),
// itemCount: settingNames.length,
// itemBuilder: (context,index){
// return Card(
// margin: EdgeInsets.symmetric(
// horizontal: 4.0.h,
// vertical: 1.0.sh,
// ),
// child: ListTile(
// onTap: (){
// print("yes");
// },
//
// title: Text(settingNames[index],style: TextStyle(fontSize: 2.0.sh,
// fontWeight: FontWeight.bold)),
//
// subtitle: Text(subtitles[index],style: TextStyle(fontSize: 1.7.sh,color: Colors.grey),),
//
// leading: Icon(settingIcons[index]),
//
// trailing: settingNames[index] == "Dark Mode"
// ? Switch(
// value: isDark,
// onChanged: (value) {
// setState(() {
// isDark = value;
// });
// },
// )
//     :Icon(Icons.arrow_forward_ios,size: 3.0.sh,color: Colors.grey,),
// ),
// );
// }
// )