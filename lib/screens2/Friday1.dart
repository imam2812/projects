
import 'package:flutter/material.dart';

import 'Navi2.dart';

class abcde extends StatefulWidget {
  const abcde({super.key});

  @override
  State<abcde> createState() => _abcdeState();
}

class _abcdeState extends State<abcde> {
  final _key = GlobalKey<FormState>();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  bool _imam = false;
  void imam(){
    setState(() {
      _imam = email.text.isNotEmpty &&  password.text.isNotEmpty == true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 300),
            TextFormField(
              onChanged: (val){
                imam();
              },
              controller: email,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Enter Email",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (val){
                imam();
              },
              controller: password,
              decoration: InputDecoration(
                icon: Icon(Icons.password),
                hintText: "Enter Password ",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 30),
            Visibility(
              visible: _imam,
                child: ElevatedButton(onPressed: (){
                  if (_key.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tntj()),
                    );
                  }
                }, child: Text("Login"))),

          ],
        ),
      ),
    );
  }
}
