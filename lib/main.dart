import 'package:flutter/material.dart';
import 'package:login_registration/Screens/RegistrationScreen.dart';
import 'Screens/LoginScreen.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn, regUi',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
