import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class apacs extends StatelessWidget {
  const apacs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("abc.jpg"),
          ),
        ),
        ),
        title: Center(child: Text("Welcome GT")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
        ],
      ),
          body:
        Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("gym.png"),
                fit: BoxFit.fill
              )
            ),
            child:
              Column(
                children: [
                  SizedBox(height: 25,),
                  TextFormField(
                    decoration: InputDecoration(
                  icon: Icon(Icons.person),
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.keyboard),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle
                    ),
                    child: ElevatedButton(
                        onPressed: (){},
                        child: Text("ok"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )
                      ),
                    ),
                  ),
  ]
          )
          ),
    ]
        ),
    );
  }
}
