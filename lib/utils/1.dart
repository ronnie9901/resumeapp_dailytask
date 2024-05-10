import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Image.asset(
                'assets/2.png',
              height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 180,
              ),

              Text(
                "Build Awesome Apps",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1),
              ),
              Text(
                "Let's put your creativtity on the",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
              Text(
                "development highway",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        ),
                    child: Center(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              letterSpacing: 1.5),
                        )),
                  ),
                  InkWell(onTap: () {
                    Navigator.of(context).pushNamed('/2');


                  },
                    child: Container(
                      margin: EdgeInsets.only(top: 40, left: 30),
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          ),
                      child: Center(
                          child: Text(
                            "SIGNUP",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                letterSpacing: 1.5),
                          )),
                    ),
                  )
                ],
              ),
              // SizedBox(height: 150,),
            ],
          ),
        ));
  }
}
