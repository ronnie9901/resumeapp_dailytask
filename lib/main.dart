import 'package:flutter/material.dart';
import 'package:resumeapp_dailytask/Ragisterform/dynamictextfield.dart';
import 'package:resumeapp_dailytask/Ragisterform/id.dart';
import 'package:resumeapp_dailytask/Ragisterform/rigister.dart';
import 'package:resumeapp_dailytask/google/google1.dart';
import 'package:resumeapp_dailytask/google/google2.dart';
import 'package:resumeapp_dailytask/google/google3dart.dart';
import 'package:resumeapp_dailytask/pdf/pdf.dart';
import 'package:resumeapp_dailytask/pdf/pdf1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pdf',
      routes: {
        '/': (context) => google1(),
        '/google2': (context) => google2(),
        '/google3': (context) => google3(),
        '/view':(context) => Ragister(),
        '/id':(context) => id(),
        '/pdf':(context) => pdf(),
        '/pdf1':(context) => pdf1(),

      },
    );
  }
}

