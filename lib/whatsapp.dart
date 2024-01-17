import 'package:flutter/material.dart';
import 'package:untitled69/Updates.dart';
import 'package:untitled69/calls.dart';
import 'package:untitled69/chats.dart';
import 'package:untitled69/community.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
      home: page1(),));
}

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0XFF008069),
          title: Text('WhatsApp'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,color: Colors.white,),
            ),
            PopupMenuButton(
             shadowColor: Colors.grey,
                itemBuilder:(context)=>[
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('New brodcast')),
              PopupMenuItem(child: Text('Linked devices')),
              PopupMenuItem(child: Text('Starred messages')),
              PopupMenuItem(child: Text('payments')),
              PopupMenuItem(child: Text('Settings')),
            ] )
          ],
          bottom: TabBar(
            indicatorColor: Colors.greenAccent,
            labelColor: Colors.greenAccent,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
           icon:   Icon(Icons.groups,),
              ),
              Tab(
              child: Text('Chats',style: TextStyle(fontSize: 15,)),
              ),
              Tab(
                child: Text('Updates',style: TextStyle(fontSize: 15,)),
              ),Tab(
                child: Text('Calls',style: TextStyle(fontSize: 15,)),
              ),
            ],
          ),
        ),
        body:  TabBarView(children: [
          community(),
          chats(),
          updates(),
          calls()
        ]
        ),
      ),
    );
  }
}
