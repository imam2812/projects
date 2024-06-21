import 'package:flutter/material.dart';

import 'Navi2.dart';

class element extends StatefulWidget {
  const element({super.key});

  @override
  State<element> createState() => _elementState();
}

class _elementState extends State<element> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 300),
            TextFormField(
              keyboardType: TextInputType.name,
              validator: (int){
                if(int==null   || int.isEmpty){
                  return "Enter Valid Name";
                }
              },
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                icon: Icon(Icons.person),
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (input){
                if(input==null  ||  input.isEmpty)
                  return "Enter Valid Password";
              },
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                  icon: Icon(Icons.password),
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tntj()),
                );
              }

            }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
