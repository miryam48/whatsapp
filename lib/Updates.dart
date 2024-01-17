import 'package:flutter/material.dart';
import 'package:untitled69/dart.dart';
import 'package:untitled69/dart1.dart';
import 'package:untitled69/list.dart';
import 'package:untitled69/list1.dart';

// void main(){
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: updates(),)
//   );
// }

class updates extends StatefulWidget {
  const updates({super.key});

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Status',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    PopupMenuButton(
                      color: Colors.white,
                        shadowColor: Colors.grey,
                        itemBuilder:(context)=>[
                          PopupMenuItem(child: Text('Muted updates')),
                          PopupMenuItem(child: Text('Status privacy')),
                        ] )
                  ],
                ),
                ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3,color: Colors.green),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('lib/images/tree.jpg'),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                              child: Icon(Icons.add,color: Colors.white,size: 13,)
                          ),
                        )
                      ],
                    ),
                  ),
                  title: Text('My Status',
                    style: TextStyle(fontSize: 15,color: Colors.white),
                  ),
                  subtitle: Text('Tap to add status update',
                    style: TextStyle(fontSize: 12,color: Colors.grey),
                  ),
                ),
                Text('Recent updates',
                  style: TextStyle(fontSize: 10,color: Colors.grey),
                ),
                ListView.builder(
                  shrinkWrap:true,
                  itemCount: name1.length,
                    itemBuilder:(BuildContext context,int index){
                    return listtile(
                      backgroundImage: Leading1[index] ,
                      text1: name1[index],
                      trat1: Trailing1[index],
                      boxborcolor: Colorbox1[index],
                    );
                    }
                ),
                ExpansionTile(
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  title:  Text('Viewed updates',
                  style: TextStyle(fontSize: 10,color: Colors.grey),
                ),
                  children: [
                    ListView.builder(
                        shrinkWrap:true,
                        itemCount: name1.length,
                        itemBuilder:(BuildContext context,int index){
                          return listtile(
                            backgroundImage: Leading11[index] ,
                            text1: name11[index],
                            trat1: Trailing11[index],
                            boxborcolor: Colorbox2[index],
                          );
                        }
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
