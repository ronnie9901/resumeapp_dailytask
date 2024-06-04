import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resumeapp_dailytask/pdf/pdf.dart';

class pdf1 extends StatefulWidget {
  const pdf1({super.key});

  @override
  State<pdf1> createState() => _pdf1State();
}

class _pdf1State extends State<pdf1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PdfPreview(
      build: (format) => generatePdf(),
    ),


    );
  }
}
