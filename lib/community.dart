import 'package:flutter/material.dart';

class community extends StatefulWidget {
  const community({super.key});

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    final wi = MediaQuery.of(context).size.width;
    final he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 8,right: 8,left: 8),
                  child: SizedBox(
                    height: 150,
                    width: 250,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage('lib/images/img_3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Text('Stay Connected with a community',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.white
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Communities bring members together in topic-based \n groups and make it easy to get admin announcements.\n Any community you are added to will appear here.',
                    style: TextStyle(fontSize: 12,
                        color: Colors.white
                    ),
                  ),
              ),
             TextButton(
                  onPressed: (){},
                  child: Text('See example communities >',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.green
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: MaterialButton(
                    minWidth: 300,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: (){},
                    child: Text('Start your community',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black
                      ),
                    ),
                  ),
                  // child: ElevatedButton(
                  //   style: ButtonStyle(
                  //     shape: ,
                  //  minimumSize:MaterialStateProperty.all(Size(300,50)),
                  //     backgroundColor: MaterialStateProperty.all(Colors.green)
                  //   ),
                  //   onPressed: (){},
                  //   child: Text('Start your community',
                  //     style: TextStyle(
                  //         fontSize: 12,
                  //         color: Colors.black
                  //     ),
                  //   ),
                  // ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
