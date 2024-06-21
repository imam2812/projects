
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tuvwx extends StatefulWidget {
  const tuvwx({super.key});

  @override
  State<tuvwx> createState() => _tuvwxState();
}

class _tuvwxState extends State<tuvwx> {
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();
  bool _imam=false;
  void imam(){
    setState(() {
      _imam = name.text.isNotEmpty && password.text.isNotEmpty == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 350,),
          Container(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_){
                  imam();
                },
                controller: name,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (_){
                  imam();
                },
                controller: password,
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Visibility(
            visible: _imam,
            child: ElevatedButton(onPressed: (){
            }, child: Text("Login")),
          )
        ],
      ),
    );
  }
}
