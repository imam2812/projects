import 'package:flutter/material.dart';

class mri extends StatelessWidget {
  const mri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(),
               // image: DecorationImage(image: AssetImage("assets/gymto.webp"),fit: BoxFit.fill)
                  image: DecorationImage(image: AssetImage("assets/gymto.webp"),fit: BoxFit.fill
                  )
              ),

            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all()
              ),
              child:
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all()
                            ),
                            child: Image.asset("flip.png",height: 150,width: 150,fit: BoxFit.fill,)),
                      ),
                      SizedBox(width: 25),
                      Column(
                       children: [
                         Container(
                             decoration: BoxDecoration(
                               border: Border.all()
                             ),
                             child: Image.asset("one.jpg",height: 70,width: 70)),
                         Container(
                           decoration: BoxDecoration(
                             border: Border.all()
                           ),
                             child: Image.asset("gym.png",height: 70,width: 70)),
                       ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        children: [

                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Image.asset("bg.jpg",height: 60,width: 80,fit: BoxFit.fill,)),
                          SizedBox(height: 20,
                          width: 20,),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Image.asset("up.jpg",height: 60,width: 80,fit: BoxFit.fill,))
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all()
                                ),
                                child: Image.asset("abc.jpg",height: 150,width: 100,fit: BoxFit.fill)),
                          ),
                          SizedBox(width: 30),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all()
                              ),
                              child: Image.asset("gym.png",height: 150,width: 100)),
                          SizedBox(width: 40),
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all()
                              ),
                              child: Image.asset("flip.png",height: 150,width: 100,fit: BoxFit.fill)),
                        ],
                      )
                    ],
                  ),

                    ],
                  )
                ,
              ),
            ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all()
            ),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    child: Image.asset("gymto.webp",height: 200,width: 200,fit: BoxFit.fill,)),
                Column(
                  children: [
                    SizedBox(height: 70),
                    Container(
                      height: 50,
                      width: 180,
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: "User Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(onPressed: (){}, child: Icon(Icons.login)),
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
