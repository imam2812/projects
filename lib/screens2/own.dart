import 'package:flutter/material.dart';

class asdfg extends StatelessWidget {
  const asdfg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Image.asset("abc.jpg"),
        title: Center (child: Text("Welcome"),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.keyboard_arrow_down_outlined),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.face),
          ),
        ],
      ),

body:
      Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.search)),
          Container(
            height: 250,
            width: 250,
            child: Image.asset("gym.png"),
          ),
  ]),
    );
  }
}
