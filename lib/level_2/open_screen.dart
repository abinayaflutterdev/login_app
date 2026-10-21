import 'package:flutter/material.dart';
import 'package:latest_flutter/level_2/common_widgets/menu_card.dart';
import 'package:latest_flutter/level_2/reg_level_2.dart';
import 'package:sizer/sizer.dart';

class OpenScreen extends StatefulWidget {
  const OpenScreen({super.key});

  @override
  State<OpenScreen> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreen> {

  final List<Map<String,dynamic>> menuItems =[ // { 4 cards data storage
                                               // map - to store menu title and icon together
                                               // dynamic - data type that can store any type of value
    {
      "icon":Icons.person_add_alt_1,
      "title":"Register Patient",
    },
    {
      "icon": Icons.description,
      "title": "Form Entry"
    },
    {
      "icon": Icons.groups,
      "title": "Manage Providers"
    },
    {
      "icon": Icons.medical_services,
      "title": "Active Visits"
    },
  ];   // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => RegLevel2(),
              ),
            );
          },
        ),
        title: Text("Open Screen"),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: EdgeInsets.all(8.0.sh),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // full available space occupy pannikum
          children: [
            Text("Welcome",
            style: TextStyle(
              fontSize: 4.0.sh,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
             ),
            SizedBox(height: 4.0.h,),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find Patients',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0.sh)
                )
              ),
            ),
            SizedBox(height: 3.0.h,),
            Expanded(child:GridView.count(
              crossAxisSpacing: 30, // horizontal ah gap kudukkum
              mainAxisSpacing: 30, // top bottom la space kudukkum
              childAspectRatio: 1.3,// 1.0-square,1.3- width adhigam,0.8-height adhigam
              crossAxisCount: 2, //oru row la ethana item varanum nu solradhu
                                                // menuitems - data , map - data change into widget
              children: menuItems.map((item) { // list la oru oru item ah onnu onna eduthukkum iteration way la
                return MenuCard( //  oru oru data kkum card create pannum
                  icon: item["icon"],
                  title: item["title"],
                );
              }).toList(), // children kku thevayana list<widget> ah convert pannum
            ),)
          ],
        ),),
      bottomNavigationBar: BottomNavigationBar(
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online,color: Colors.black,),
              label: "Books"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.green),
                label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.green),
                label: "Person")
          ]
      ),
    );
  }
}
