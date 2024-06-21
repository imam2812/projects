import 'package:flutter/material.dart';

class expo extends StatefulWidget {
  const expo({super.key});

  @override
  State<expo> createState() => _expoState();
}

class _expoState extends State<expo> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            SizedBox(height: 20)
,            TextFormField(
              keyboardType: TextInputType.name,
              validator: (input){
                if(input==null || input.isEmpty){
                  return"Enter Valid Name";
                }
              },
              decoration: InputDecoration(
                hintText: "Register Your Name Here",
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (input){
                if( !RegExp(
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                    .hasMatch(input!)){
                  return "Enter Valid Mail Id";
                }
              },
              decoration: InputDecoration(
                hintText: "Register Your Mail Id Here",
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.mail),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.number,
              validator: (String? data){
                if(data?.length!=10  ||  data!.isEmpty){
                  return "Enter Valid Number";

                }
              },
              decoration: InputDecoration(
                hintText: "Enter Your Phone Number",
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              validator: (input){
                if(input==null || input.isEmpty){
                  return"Enter Correct Password";
                }
              },
              decoration: InputDecoration(
                hintText: "Enter New Password Here",
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.password),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){

              }
            }, child: Text("Register Here"))
          ],
        ),
      ),
    );
  }
}
