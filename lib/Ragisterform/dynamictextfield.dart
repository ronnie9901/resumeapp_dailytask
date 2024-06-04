import 'package:flutter/material.dart';
import 'package:resumeapp_dailytask/utils/2.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dytextfield(

      ),
    );
  }
}
class dytextfield extends StatefulWidget {
  const dytextfield({super.key});

  @override
  State<dytextfield> createState() => _dytextfieldState();
}

class _dytextfieldState extends State<dytextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('dynamic textfied'),

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(text.length, (index) =>   ListTile(
                title: TextField(
                  controller: text[index],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.black),
                        ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 2,color: Colors.black
                       )
                     )
          
                    ),
          
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(onPressed: () {
                      TextEditingController txtController=TextEditingController();
                      setState(() {
                        if(text==txtController)
                          {
                            null;
                          }
                        else{
                          text.add(txtController);
                        }

                      });
          
                    }, child: Icon(Icons.add)),
                    TextButton(onPressed: () {
          
                      TextEditingController txtController=TextEditingController();
                      setState(() {
                        text.removeAt(index-1);
                      });
          
                    }, child: Icon(Icons.remove))
                  ],
                ),
              )),
              InkWell(
                onTap: () {
                   String skill=txtController.text;

                  setState(() {
                    skill = '';
                    for(int i=0;i<text.length;i++)
                      {
                        skill=skill+" "+text[i].text;
                      }
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${skill}',),));
                  });

                 //,style: TextStyle(color: Colors.white),)));
          
          
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
          
                  ),
                  child: Text(
                    'submit',style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),


    );
  }
}

TextEditingController txtController=TextEditingController();

List text=[
  txtController,
];
// String skill='rohan';

