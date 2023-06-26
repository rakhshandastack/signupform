import 'package:flutter/material.dart';
import 'package:flutter_app/signupform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'forms ,validation and navigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple).copyWith(secondary: Colors.deepOrange),
      ),
   
      home: const SignUpForm(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  