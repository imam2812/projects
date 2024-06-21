import 'package:flutter/material.dart';

class validation extends StatefulWidget {
  const validation({super.key});

  @override
  State<validation> createState() => _validationState();
}

class _validationState extends State<validation> {

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Form(
            key: _key,
            child: Column(
              children: [
                TextFormField(
                  validator: (input)
                  {
                    if(input == null || input.isEmpty)
                    {
                      return 'please enter valid name';
                    }

                  },
                ),
                ElevatedButton(onPressed: (){
                  if(_key.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok success")));
                  }
                }, child: Text("login")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/// reg exp