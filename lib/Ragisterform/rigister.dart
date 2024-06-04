import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resumeapp_dailytask/Ragisterform/dynamictextfield.dart';
import 'package:resumeapp_dailytask/imagepick/imagep.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ragister(),
    );
  }
}

ImagePicker imgpicker = ImagePicker();
File? fileImage;
XFile? xFileImage;
GlobalKey<FormState> formkey = GlobalKey();

TextEditingController txtemail = TextEditingController();
TextEditingController txtphone = TextEditingController();
TextEditingController txtenamef = TextEditingController();
TextEditingController txtnamel = TextEditingController();
TextEditingController txtadd = TextEditingController();
TextEditingController txtdate = TextEditingController();

class Ragister extends StatefulWidget {
  const Ragister({super.key});

  @override
  State<Ragister> createState() => _RagisterState();
}

class _RagisterState extends State<Ragister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register form '),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    image: (fileImage != null)
                        ? DecorationImage(image: FileImage(fileImage!))
                        : null,
                    shape: BoxShape.circle,
                    color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () async {
                        xFileImage = await imgpicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(xFileImage!.path);
                        });
                      },
                      icon: Icon(Icons.image)),
                  IconButton(
                      onPressed: () async {
                        xFileImage = await imgpicker.pickImage(
                            source: ImageSource.gallery);
                        setState(() {
                          fileImage = File(xFileImage!.path);
                        });
                      },
                      icon: Icon(Icons.camera_alt_outlined)),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: txtenamef,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field the first name  ';
                          }
                        },
                        decoration: InputDecoration(
                            label: Text(' first name'),
                            prefixIcon: Icon(Icons.account_box_outlined),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'First Name'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: txtnamel,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field the last name  ';
                          }
                        },
                        decoration: InputDecoration(
                            label: Text(' last  name'),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'last Name'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: txtphone,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field the phone no  ';
                          }
                        },
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            label: Text('phone no: '),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'phone no'),
                      ),

                      SizedBox(
                        height: 10,
                      ),
                TextFormField(
                  controller: txtdate,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      'DD/MM/YY',
                      style: TextStyle(color: Colors.black),
                    ),
                    suffixIcon: InkWell(
                        onTap: ()   {
                          setState(() async {
                            datepicker = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1950),
                                lastDate: DateTime(2025));
                            if(datepicker!=null) {
                              date = '${datepicker!.day}/${datepicker!
                                  .month}/${datepicker!.year}';
                              txtdate.text = date;
                            }
                          });
                        },
                        child: Icon(Icons.calendar_month_outlined)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.blue)),
                  ),
                ),

                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: txtadd,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field the address  ';
                          }
                        },
                        decoration: InputDecoration(
                            label: Text('address : '),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'surat '),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: txtemail,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'field the email  ';
                          }
                          if (!value.contains('@gmail.com')) {
                            return 'must be inter @gmail.com';
                          }
                          if (value!.toString() == '@gmail.com') {
                            return 'must be inter @gmail.com';
                          }
                          if (value!.contains(' ')) {
                            return 'space is not allow ';
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            label: Text('email address '),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'abc@gmail.com'),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'gender ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Radio(

                                value: 'male', groupValue: gender, onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            }),
                            Text('Male'),
                            Radio(

                                value: 'female', groupValue: gender, onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            }),
                            Text('Female'),
                            Radio(

                              value: 'others', groupValue: gender, onChanged: (value) {
                              setState(() {
                                gender = value!;
                              });
                            },),
                            Text('Others'),
                          ],
                        ),

                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'hobby',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              checkhobby.length,
                              (index) => Row(
                                children: [
                                  Checkbox(
                                    value: checkhobby[index],
                                    onChanged: (value) {
                                      setState(() {
                                        if (checkhobby[index] == false) {
                                          checkhobby[index] = value!;
                                          hobby.add(ho[index]);
                                        } else {
                                          checkhobby[index] = false;
                                          hobby.remove(ho[index]);
                                        }
                                      });
                                    },
                                  ),
                                  Text(
                                    ho[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                            onPressed: () {
                              bool res =formkey.currentState!.validate();
                              fn = txtenamef.text;
                              fl = txtnamel.text;
                              em = txtemail.text;
                              ad = txtadd.text;
                              ph = txtphone.text;
                              date=txtdate.text;

                              txtphone.clear();
                              txtemail.clear();
                              txtadd.clear();
                              txtnamel.clear();
                              txtenamef.clear();


                               checkhobby = List.filled(3, false);
                              if (res) {
                                Navigator.of(context).pushNamed('/id');
                              }


                            },
                            child: Text(
                              'submit',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
DateTime? datepicker;
String date = "";
String gender='male';
String click = '';
List hobby = [];
List checkhobby = List.filled(3, false);
List ho = ['sport', 'reading', 'writing'];
String fn = '';
String fl = '';
String em = '';
String ph = '';
String ad = '';

