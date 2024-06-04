import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class pdf extends StatefulWidget {
  const pdf({super.key});

  @override
  State<pdf> createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('invoicemodel'),
        actions: [
          InkWell(onTap: () {
            Navigator.of(context).pushNamed('/pdf1');
          },child: Icon(Icons.picture_as_pdf))
        ],
      ),
      body: Column(
        children: [
          ...List.generate(Invoise.length, (index) => ListTile(
            title: Text(Invoise[index].name!,),
            subtitle: Text(Invoise[index].price!,),
            trailing: Text(Invoise[index].cate!),
          ))
        ],
      ),

    );
  }
}

List Invoise=[
  invoisemodel(name: 'vivo',price: '10000',cate: 'phone'),
  invoisemodel(name: 'vivo',price: '10000',cate: 'phone'),
  invoisemodel(name: 'vivo',price: '10000',cate: 'phone'),

];

class invoisemodel{
  String? name;
  String? price;
  String? cate;
   invoisemodel({this.name,this.cate,this.price});
}

Future <Uint8List> generatePdf()
{
  final pdf=pw.Document();
  pdf.addPage(
    pw.Page(
      pageFormat:PdfPageFormat.a4,
      build :(Context)=>pw.Column(

        children :List.generate(Invoise.length, (index) => pw.Text('${Invoise[index].name!} \n${Invoise[index].price!}${Invoise[index].cate!}\n\n',style:pw.TextStyle(fontSize: 20) ))
      )

    )

  );
  return pdf.save();
}
