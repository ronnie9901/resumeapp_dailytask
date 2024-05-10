import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class google2 extends StatefulWidget {
  const google2({super.key});

  @override
  State<google2> createState() => _google2State();
}
TextEditingController txtpass=TextEditingController();
GlobalKey<FormState> formkey=GlobalKey();
class _google2State extends State<google2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:  formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 100),
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
                          padding: const EdgeInsets.only(left: 20,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 350,
                                child:   TextFormField(
                                  validator: (value) {
                                    if(value!.isEmpty)
                                      {
                                        return 'password must required';
                                      }
                                    if(value!.length<=8 || value!.length>=32)
                                      {
                                        return ' max 8 latter provide';
                                      }
                                  },
                                  obscureText: (check)? false:true,
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10),

                                      ),

                                      prefixIcon: (
                                          Icon(Icons.fingerprint)
                                      ),
                                      suffixIcon: IconButton(onPressed: (){
                                        setState(() {
                                          check = !check;
                                          if(check){
                                            icon = Icons.visibility_off;
                                          }
                                          else{
                                            icon = Icons.remove_red_eye;
                                          }
                                        });
                                      }, icon: Icon(icon)),
                                      label: Text(
                                          'password'
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black
                                          ),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            color: Colors.black,

                                          )
                                      )
                                  ),


                                ),
                              ),
                              Text(
                                'forget password?',
                                style: TextStyle(color: Colors.blue),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'not your computer? use guest mode to sign in privately',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    '.lern more',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text(
                                    'create  account',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    height: 30,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: FloatingActionButton(
                                      backgroundColor: Colors.blue ,
                                      onPressed: () {
                                          bool res=formkey.currentState!.validate();
                                          if(res)
                                          {
                                            password=txtpass.text;
                                            Navigator.of(context).pushNamed('/google3');
                                          }


                                      },
                                      child: Text('Sign in'),
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
String password= 'password must required';
bool check = false;
var icon = Icons.remove_red_eye;
