import 'package:flutter/material.dart';

class qwerty extends StatelessWidget {
  const qwerty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        title: Center (child: Text("Hello"),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
        ],
      ),

      body:
      Column (
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.accessibility)),
          Container(
            height: 150,
            width: 150,
            child: Image.asset("abc.jpg"),
          )
        ],
      ),
    );
  }
}
