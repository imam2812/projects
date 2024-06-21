import 'package:flutter/material.dart';

class imam extends StatelessWidget {
  const imam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
           width: 50,
           decoration: BoxDecoration(
             border: Border.all(),
             shape: BoxShape.circle,
             image: DecorationImage(
               image: AssetImage("abc.jpg"),
             ),
           ),
          ),
        ),
       
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text("Welcome GT")),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(),
                image: DecorationImage(
                    image: AssetImage("gym.png"),
                    fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Text("Welcome GT",style: TextStyle(color: Colors.blue,fontSize: 40),),
              ), 
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              )
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.password),
              hintText: "XXXXXX",
              border: OutlineInputBorder()
            )
          ),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.search))
        ],
      ),
    );
  }
}
