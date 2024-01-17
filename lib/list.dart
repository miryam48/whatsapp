import 'package:flutter/material.dart';


class list extends StatefulWidget {
  final ImageProvider? backgroundImage;
  final String? text;
  final String? Subt;
  final String? trat;
  list({super.key,this.backgroundImage, this.text, this.Subt, this.trat, });

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return ListTile(

        leading: CircleAvatar(
          backgroundImage: widget.backgroundImage,
        ),
        title: Text(widget.text!,
          style: TextStyle(
              fontSize: 15,
              color: Colors.white
          ),
        ),
        subtitle: Text(widget.Subt!,
          style: TextStyle(
              fontSize: 12,
              color: Colors.grey
          ),
        ),
        trailing: Text(widget.trat!,
          style: TextStyle(fontSize: 12,color: Colors.white),
        ),
      );
  }
}


