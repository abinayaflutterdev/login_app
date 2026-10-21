import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Your Terms and Conditions are Accepted"),
    );
  }
}
