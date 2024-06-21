import 'package:flutter/material.dart';

class pqrs extends StatelessWidget {
  const pqrs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu,color: Colors.cyan,size: 35,),
        title: Text("Welcome GT",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.bold),),
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
      body: Column(
        children: [
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          TextFormField(),
          SizedBox(height: 50),
          ElevatedButton(onPressed: (){} , child: Icon(Icons.accessibility)),
          Container(
            height: 200,
            width: 200,
           // color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
             // borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("assets/abc.jpg"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
            child: Center(child: Text("ok",style: TextStyle(color: Colors.blue,fontSize: 35),)),

          )
        ],
      ),
    );
  }
}
