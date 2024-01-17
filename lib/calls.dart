import 'package:flutter/material.dart';
import 'package:untitled69/dart2.dart';
import 'package:untitled69/list.dart';
import 'package:untitled69/list2.dart';

void main(){
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: calls(),));
}

class calls extends StatefulWidget {
  const calls({super.key});

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.link,size: 20,color: Colors.white,),
                ),
                title: Text('Create call link',
                style: TextStyle(fontSize: 15,color: Colors.white),
                ),
                subtitle: Text('Share a link for your WhatsApp call',
                  style: TextStyle(fontSize: 12,color: Colors.grey),
                ),
              ),
              Text('Recent',
                style: TextStyle(fontSize: 15,color: Colors.white),
              ),
              ListView.builder(
                shrinkWrap: true,
          itemCount: name2.length,
                  itemBuilder: (BuildContext context , int index){
            return listtile1(
              backgroundImage: Leading2[index],
              text2: name2[index],
              ticon: Icon2[index],
              Subt2: Subtitle2[index],
              icon: Trailing2[index],
              ticoncolor: Color2[index],
              textcolor: Color21[index],
            );
                  }
              )
            ],
          ),
        ),
      ),
    );
  }
}
