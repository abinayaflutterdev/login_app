import 'package:flutter/material.dart';
import 'package:latest_flutter/login_reg_screen/custom_file.dart';
import 'package:latest_flutter/login_reg_screen/custom_form_field.dart';
import 'package:sizer/sizer.dart';

class ResetSuccessScreen extends StatefulWidget {
  const ResetSuccessScreen({super.key});

  @override
  State<ResetSuccessScreen> createState() => _ResetSuccessScreenState();
}

class _ResetSuccessScreenState extends State<ResetSuccessScreen> {


  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _search() {
    String searchText = _searchController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("You searched: $searchText"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Welcome,"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0.sh),
          child: Column(
            children: [
              Container(
                height: 8.0.h,
                width: 200.0.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.0.sh)
                ),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                  ),
                  onSubmitted: (value){
                    _search();
                }
                ),
              ),
              SizedBox(height: 3.0.h,),
              Row(
                children: [
                  Container(
                    height: 10.0.h,
                    width: 10.0.w,
                    color: Colors.black,
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}