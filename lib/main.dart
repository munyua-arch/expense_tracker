import 'package:expense_tracker/pages/home.dart';
import 'package:expense_tracker/utils/login.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/utils/onboarding.dart';
import 'package:expense_tracker/utils/login.dart';
import 'package:expense_tracker/utils/register.dart';
import 'package:expense_tracker/utils/forgot.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Register(),
      routes: {
        '/': (context) => Onboarding(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/forgot': (context) => ForgotPassword(),
        '/home': (context) => UserHome(),
      },
    );
  }
}
