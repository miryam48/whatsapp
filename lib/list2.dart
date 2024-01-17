import 'package:flutter/material.dart';


class listtile1 extends StatefulWidget {
  final ImageProvider? backgroundImage;
  final String? text2;
  final String? Subt2;
  final IconData? ticon;
  final IconData? icon;
  final Color? ticoncolor;
  final Color? textcolor;
  listtile1({super.key,this.backgroundImage, this.text2, this.Subt2, this.icon, this.ticon, this.ticoncolor, this.textcolor, });

  @override
  State<listtile1> createState() => _listtile1State();
}

class _listtile1State extends State<listtile1> {
  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading: CircleAvatar(
        backgroundImage: widget.backgroundImage,
      ),
      title: Text(widget.text2!,
        style: TextStyle(
            fontSize: 15,
            color: widget.textcolor
        ),
      ),
      subtitle: Row(
        children: [
          Icon(widget.ticon,size: 20,color: widget.ticoncolor),
          Text(widget.Subt2!,
            style: TextStyle(
                fontSize: 12,
                color: Colors.grey
            ),
          ),
        ],
      ),
      trailing: Icon(widget.icon,size: 20,color: Colors.green,),
    );
  }
}


