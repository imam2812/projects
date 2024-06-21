import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class week extends StatelessWidget {
  const week({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(image:
            AssetImage('assets/flip.png'),fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 25,width: 25,),
            Row(
              children: [
             SizedBox(width: 10,),
                Container(
                  height: 300,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.greenAccent,
                    border: Border.all()
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 230,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/rem.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                          )
                        ),
                      ),
                      Container(
                        child: Center(child: Text("Welcomes You All")),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 300,
                  width: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lime,
                      border: Border.all()
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 230,
                        width: 190,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/gymto.webp"),
                            fit: BoxFit.fill
                          ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              topLeft: Radius.circular(30)
                            )
                        ),
                      ),
                      Container(
                        child: Text("Keep Your Body Fit"),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 30,sigmaX: 30),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  border: Border.all(),
                                  image: DecorationImage(image: AssetImage("assets/gym.png"),fit: BoxFit.fill,
                                  )
                                ),
                              ),
                            ),
                            SizedBox(height: 70),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Register Here",
                                icon: Icon(Icons.person),
                                border: OutlineInputBorder()
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(onPressed: (){}, child: Icon(Icons.login)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

              ],
            )
        ),
      );
  }
}
