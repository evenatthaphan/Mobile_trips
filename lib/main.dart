import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';


void main() {   //run app
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',  // set properties for class
      home: LoginPage(),
    );
  }
}


