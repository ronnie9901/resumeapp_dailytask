import 'package:flutter/material.dart';
import 'package:resumeapp_dailytask/google/google1.dart';
import 'package:resumeapp_dailytask/google/google2.dart';
import 'package:resumeapp_dailytask/google/google3dart.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => google1(),
        '/google2': (context) => google2(),
        '/google3': (context) => google3(),

      },
    );
  }
}

