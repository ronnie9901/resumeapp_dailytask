import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Padding(
             padding: const EdgeInsets.all(15.0),
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     height: 200,
                     width: 200,
                     child: Image.asset(
                       'assets/2.png',
               
                     ),
                   ),
                   Text('Welcome back ,',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),
                   Text('make it work,make it right,make it fast .',style:TextStyle(
                     fontSize: 15
                   ) ,),
                   SizedBox(height: 10,),
                   TextField(
                     style: TextStyle(
                    fontSize: 20
                     ),
                     decoration: InputDecoration(
                       focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                         borderSide: BorderSide(
                           color: Colors.black
                         )
                       ),
                       hintText: 'abc@gmail.com',
                      prefixIcon: (
                      Icon(CupertinoIcons.person)
                      ),
                       border: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.black),
                         borderRadius: BorderRadius.circular(10),
               
                       ),

                       label: Text(
                         'email'
                       ),
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(
                           color: Colors.black,
               
                         ),
                         borderRadius: BorderRadius.circular(10),
               
                       ),
               
                     ),
                     
                   ),
                          SizedBox(height: 10,),
                   TextField(
                     obscureText: (check)? true:false,
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
                   SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text('forget password ?',style: TextStyle(
                         color: Colors.blueAccent,fontSize: 18
                       ),),
                     ],
                   ),
                   SizedBox(height: 40,),
                   Container(
                     alignment: Alignment.center,
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.black,
                       borderRadius: BorderRadius.circular(10)
                     ),
                     child: Text('Login',style: TextStyle(
                       color: Colors.white,fontSize: 20
                     ),),
                   ),
                   SizedBox(height: 10,),
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('or',style: TextStyle(
                         fontSize: 20,
                       ),),
                     ],
                   ),
                   SizedBox(height: 10,),
                   Container(
                     alignment: Alignment.center,
                     height: 50,
                     width: double.infinity,
                     decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                         borderRadius: BorderRadius.circular(10)
               
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image(image: AssetImage('assets/google.png',),height: 20,),
                         Text(' Sign-in with Google'),
                         
                       ],
                     )
                   ),
                   SizedBox(height: 10,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Dont have an  Account ?'),
                       Text('Signup',style: TextStyle(color: Colors.blue),)
                     ],
                   )
                 ],
               ),
             ),
           ),
    );
  }
}
 bool check=false;
var icon = Icons.remove_red_eye;