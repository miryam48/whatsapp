import 'package:flutter/material.dart';


class listtile extends StatefulWidget {
  final ImageProvider? backgroundImage;
  final String? text1;
  final String? trat1;
  final Color? boxborcolor;
  listtile({super.key, this.backgroundImage, this.text1, this.trat1, this.boxborcolor,});

  @override
  State<listtile> createState() => _listtileState();
}

class _listtileState extends State<listtile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            border: Border.all(width: 3,color: widget.boxborcolor!),
            borderRadius: BorderRadius.circular(25)
        ),
        child: CircleAvatar(
          radius: 40,
          backgroundImage: widget.backgroundImage,
        ),
      ),
      title: Text(widget.text1!,
        style: TextStyle(
            fontSize: 15,
            color: Colors.white
        ),
      ),
      subtitle: Text(widget.trat1!,
        style: TextStyle(
            fontSize: 12,
            color: Colors.grey
        ),
      ),
    );
  }
}
