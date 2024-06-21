import 'package:flutter/material.dart';
class valid extends StatefulWidget {
  const valid({super.key});

  @override
  State<valid> createState() => _validState();
}

class _validState extends State<valid> {
  final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (input){
                if(input==null || input.isEmpty){
                   return "please enter correct data";
                }
              },
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate()){
              }
            }, child: Text("OK"))
          ],
        ),
      ),
    );
  }
}

