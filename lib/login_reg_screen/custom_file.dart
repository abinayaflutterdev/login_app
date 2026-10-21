import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

   final String username;

  const HomeScreen({
    super.key,
    required this.username,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(
        child: Text('Welcome! You have signed up successfully.', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}