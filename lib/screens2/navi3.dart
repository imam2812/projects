import 'package:flutter/material.dart';
import 'package:project/screens2/wednestwovali.dart';

import 'Thursday Navi.dart';

class worth extends StatefulWidget {
  const worth({super.key});

  @override
  State<worth> createState() => _worthState();
}

class _worthState extends State<worth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.menu),
        ),
        title: Center(child: Text("PROFILE")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.close),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text("Criminal Records"),
          SizedBox(height: 75,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.blueAccent,
              leading: Icon(Icons.person),
              title: Center(child: Text("Report")),
              trailing: Icon(Icons.more_horiz),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.limeAccent,
              leading: Icon(Icons.person),
              title: Center(child: Text("Report 2")),
              trailing: Icon(Icons.more_vert),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap:()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => element()),
                );
              },
              child: ListTile(
                tileColor: Colors.deepOrangeAccent,
                leading: Icon(Icons.logout),
                title: Center(child: Text("Log out")),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
            ),
          )
        ],
      ),
    );
  }
}
