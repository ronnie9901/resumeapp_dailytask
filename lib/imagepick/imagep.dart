import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: imagepick(),
    );
  }
}


ImagePicker imgpicker = ImagePicker();
File? fileImage, Image;
XFile? xFileImage;

class imagepick extends StatefulWidget {
  const imagepick({super.key});


  @override
  State<imagepick> createState() => _imagepickState();
}

class _imagepickState extends State<imagepick> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
            'image picked'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 350,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: (fileImage != null) ?
                  DecorationImage(
                    fit: BoxFit.cover,
                    image: FileImage(fileImage!),
                  )
                      : null

              ),

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: () async {
                     xFileImage= await imgpicker.pickImage(source: ImageSource.gallery);

                  setState(() {
                    if (xFileImage != null) {
                      fileImage = File(xFileImage!.path);

                    }
                  });
                }, child: Icon(Icons.image, size: 60,)),

                InkWell(onTap: () async{
                   xFileImage= await imgpicker.pickImage(source: ImageSource.camera);
               setState(() {
                 if (xFileImage != null) {
                   fileImage = File(xFileImage!.path);

                 }
               });
                }, child: Icon(Icons.camera_alt_outlined, size: 60))
              ],
              
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextButton(onPressed: () {

              },
              child: Text('submit',style: TextStyle(
                color: Colors.black,
              ),),),
            )

          ],
        ),
      ),
    );
  }
}






