import 'package:flutter/material.dart';
import 'package:project/OTT/authservice.dart';

import 'BOTNAVI.dart';

class ott7 extends StatefulWidget {
  const ott7({super.key});

  @override
  State<ott7> createState() => _ott7State();
}

class _ott7State extends State<ott7> {

  TextEditingController imam =TextEditingController();
  TextEditingController imam1 =TextEditingController();

  final imam2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: imam2,
        child: Column(
          children: [

            SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: imam,
                  keyboardType: TextInputType.name,
                  validator: (int){
                    if(int==null   || int.isEmpty){
                      return "Enter Valid Name";
                    }
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.person),
                      hintText: "Enter Your Name"
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                child: TextFormField(
                  controller: imam1,
                  validator: (input){
                    if(input==null  ||  input.isEmpty || input.length!=8)
                      return "Enter Valid Password";
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter Your Password"
                  ),
                ),
              ),
            ),

            ElevatedButton(onPressed: () async {
              final message = await AuthService().registration(
                  email: imam.text,
                  password: imam1.text);

              if(imam2.currentState!.validate()){
                if(message!.contains('Success')){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => prime()),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Account Created"))
                  );
                }  else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("This Email Already Exist"))
                  );
                }
              }
            }, child: Text("Create"))
          ],
        ),
      ),
    );
  }
}
