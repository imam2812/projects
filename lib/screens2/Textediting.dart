import 'package:flutter/material.dart';

class edit extends StatefulWidget {
  const edit({super.key});

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  TextEditingController imam =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                controller: imam,
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            setState(() {
              imam.text = "Hello";
            });
          }, child: Text("Hello")),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            setState(() {
              imam.text = "1234568790";
            });
          }, child: Text("1234567890")),

        ],
      ),
    );
  }
}
