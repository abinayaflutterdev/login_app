import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'cart_page/ama_splash_screen.dart';

//import 'package:latest_flutter/profile_file.dart';
//import 'level_2/common_widgets/menu_card.dart';
//import 'level_2/forgot_level_2.dart';
//import 'level_2/login_level_2.dart';
//import 'level_2/open_screen.dart';
//import 'level_2/reg_level_2.dart';

//import 'level_2/common_widgets/common_text_form_field.dart';
//import 'login_reg_screen/custom_form_field.dart';
//import 'login_reg_screen/splash_screen.dart';
//import 'login_reg_screen/create account_file.dart';
//import 'package:latest_flutter/settings_file.dart';
//import 'package:latest_flutter/second_file.dart';
//import 'package:latest_flutter/third_file.dart';
//import 'forth_file.dart';
//import 'otp_file.dart';
//import 'check_file.dart';
//import 'package:latest_flutter/third_file.dart';

//import 'first_file.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: false,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pink,
            ),
            appBarTheme:  AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              elevation: 0,
            ),
          ),
          home:AmaSplashScreen(),
        );
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
