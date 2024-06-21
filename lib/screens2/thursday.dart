import 'package:flutter/material.dart';

class xyz extends StatelessWidget {
  const xyz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Image.asset("flip.png"),
            height: 150,
            width: double.infinity,
          ),
          Container(
            height: 350,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              border: Border.all()
              ),
            child:
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("gym.png",height:180 ,width:180 ,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("Abc.jpg",height: 180,width: 180,),
                    )
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      child: TextFormField(
                        decoration: InputDecoration(icon: Icon(Icons.person),
                          hintText: "User Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){}, child: Icon(Icons.login)),
                    ),
                  ],
                ),
                ]
              ),
            ),
          SizedBox(height: 25),
          Container(
            height: 380,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.limeAccent,
              border: Border.all()
            ),
            child: Column(
              children: [
                SizedBox(height: 80),
                Row(
                  children: [
                    Image.asset("gymto.webp",height: 150,width: 150),
                    Expanded(child: Text("Welcome Gt This is Your Base Life Time mdkfsidjhgijsdghsdgSDGIGS")),
                    Image.asset("gym.png",height: 150,width: 150)
                  ],
                )
              ],
            ),
          )
            ],
      ),
      );
  }
}
