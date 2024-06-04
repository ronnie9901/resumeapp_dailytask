import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class google1 extends StatefulWidget {
  const google1({super.key});

  @override
  State<google1> createState() => _google1State();
}

TextEditingController txtemail = TextEditingController();
GlobalKey<FormState> formkey = GlobalKey();

class _google1State extends State<google1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 100, top: 50),
                    alignment: Alignment.center,
                    height: 300,
                    width: 700,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Image.asset(
                                'assets/google.png',
                                height: 40,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Sign in',
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('use your google Account'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 350,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'field the email or phone number ';
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
                                  style: TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    hintText: 'abc@gmail.com',
                                    prefixIcon: (Icon(CupertinoIcons.person)),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    label: Text('email'),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'forget email?',
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Not your computer? use guest mode to sign in privately',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  Text(
                                    '.lern more',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'create  account',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.blue,
                                      onPressed: () {
                                        bool res =
                                            formkey.currentState!.validate();
                                          formkey.currentState!.reset();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(

                                          SnackBar(content: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('email success !'),
                                                TextButton(onPressed: () {
                                                  formkey.currentState!.reset();
                                                }, child: Text('retry',style: TextStyle(color: Colors.white,fontSize: 20),))
                                              ],
                                            ),
                                          ),
                                            backgroundColor: Colors.blue,
                                          ),
                                        );
                                        if (res) {
                                          Navigator.of(context)
                                              .pushNamed('/google2');
                                        }
                                      },
                                      child: Text('next'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

