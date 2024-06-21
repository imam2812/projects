import 'package:flutter/material.dart';

class wipro extends StatefulWidget {
  const wipro({super.key});

  @override
  State<wipro> createState() => _wiproState();
}

class _wiproState extends State<wipro> {

  final  _key =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (input)
                  {
                    if(input== null || input.isEmpty)
                      {
                        return "please enter valid name";
                      }
                  },
            ),
            ElevatedButton(onPressed: (){
            if(_key.currentState!.validate())
              {
                
              }
            } ,child: Text("login")),
          ],
        ),
      ),
    );
  }
}
