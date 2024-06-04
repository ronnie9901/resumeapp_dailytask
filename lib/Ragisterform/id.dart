import 'package:flutter/material.dart';
import 'package:resumeapp_dailytask/Ragisterform/rigister.dart';

import 'dynamictextfield.dart';

class id extends StatefulWidget {
  const id({super.key});

  @override
  State<id> createState() => _idState();
}

class _idState extends State<id> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('id card'),
        leading: InkWell(onTap: () {
          fileImage=null;
          Navigator.of(context).pushNamed('/view');


        },child: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20,left: 20),

              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(

                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                          image: (fileImage != null)
                              ? DecorationImage(image: FileImage(fileImage!))
                              : null,
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '  First name  : ${fn}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '  last name   : ${fl}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '  phone       : ${ph}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '  Birthday   : ${date}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '  email     : ${em}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '  address     : ${ad}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '   Gender     : ${gender}',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    ListTile(
                      leading: const Text('Hobbies :',
                        style: TextStyle(
                            color: Colors.black,fontSize: 20, ),
                      ),
                      title: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              hobby.length,
                              (index) => Row(
                                children: [
                                  Text(
                                    '${hobby[index]} ',
                                    style: const TextStyle(
                                      fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],


                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
