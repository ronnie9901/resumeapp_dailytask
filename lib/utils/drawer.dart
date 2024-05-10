import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: drawerapp(),
    );
  }
}
class drawerapp extends StatefulWidget {
  const drawerapp({super.key});

  @override
  State<drawerapp> createState() => _drawerappState();
}

class _drawerappState extends State<drawerapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(

        width: 250,
        backgroundColor: Colors.white10,
        child:ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  'Gmail',
                  style: TextStyle(fontSize: 28, color: Colors.white70),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: Icon(
                  Icons.all_inbox,
                  color: Colors.white,
                  size: 25,
                ),

                title: Text(
                  'All Inboxes',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Container(
                width: 310,
                decoration: const BoxDecoration(
                    color: Color(0xFF31303A),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const ListTile(
                  leading: Icon(
                    Icons.inbox,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    'Inbox',
                    style: TextStyle(fontSize: 18, color: Colors.white70),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              const ListTile(
                leading: Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Starred',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.snooze,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Snoozed',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.label_important_outline,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Important',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.send_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Sent',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.note_add_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Drafts',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'All Mail',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.report_gmailerrorred,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Spam',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.delete_sweep_outlined,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Trash',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),

              const Divider(
                color: Colors.white,
              ),

              const ListTile(
                leading: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Create new',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),

              const Divider(
                color: Colors.white,
              ),

              const ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ),
            ],
          ),
        ]),


      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.green),
      ),
    );
  }
}