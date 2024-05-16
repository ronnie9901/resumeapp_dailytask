import 'package:flutter/material.dart';
import 'package:resumeapp_dailytask/google/google2.dart';
import 'package:resumeapp_dailytask/main.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tiktak(),
    );
  }
}
class tiktak extends StatefulWidget {
  const tiktak({super.key});

  @override
  State<tiktak> createState() => _tiktakState();
}

class _tiktakState extends State<tiktak> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TikTak Game'
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(

              children: [
               ...List.generate(game.length, (index) => InkWell(onTap: () {
               setState(() {
                 if(x%2==0)
                 {
                   game[index]='X';
                   x++;
                 }
                 else
                 {
                   game[index]='O';
                   x++;
                 }
                 print(x);

                 for(int i=0;i<game.length;i++)
                   {
                     if(game[index][i][0]=='0'&&
                         game[index][i][1]=='0'&&
                         game[index][i][2]=='0'

                     )
                       {
                             check;
                       }
                     if(game[index][0][i]=='0'&&
                         game[index][1][i]=='0'&&
                         game[index][2][i]=='0'

                     )
                     {
                       check;
                     }
                     if(game[index][0][0]=='0'&&
                         game[index][1][1]=='0'&&
                         game[index][2][2]=='0'
                     )
                     {
                       check;
                     }
                     if(game[index][0][2]=='0'&&
                         game[index][1][1]=='0'&&
                         game[index][2][0]=='0'
                     )
                     {
                       check;
                     }
                   }
               });
               },child: buildContainer(index)))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(int index) {
    return Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(1),
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black
                ),
               child:InkWell(onTap: () {
                 setState(() {

                 });
               },child: Text(game[index],style: TextStyle(color: Colors.white,fontSize: 30),)),
              );
  }
}
int x=1;
List<dynamic> game = ["","","","","","","","","",];




