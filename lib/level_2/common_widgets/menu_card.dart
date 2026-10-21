import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class MenuCard extends StatelessWidget {

  final IconData icon;
  final String title;

   MenuCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0.sh),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.green,
            size: 10.0.sh,
          ),
          SizedBox(height: 2.0.h),
          Text(title,
          textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
