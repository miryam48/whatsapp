import 'package:flutter/material.dart';
import 'package:untitled69/dart.dart';
import 'package:untitled69/list.dart';

class chats extends StatefulWidget {
  const chats({super.key});

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return list(
            text: name[index],
            Subt: Subtitile[index],
            trat: Trailing[index],
            backgroundImage: Leading[index],
          );
        },
      )
    );
  }
}


