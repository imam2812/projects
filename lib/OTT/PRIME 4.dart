import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/OTT/sample%20ip.dart';
import 'PRIME1.dart';
import 'Prime5.dart';
import 'package:provider/provider.dart';
import 'Modeltheme.dart';
import 'Mytheme.dart';

class ott4 extends StatefulWidget {
  const ott4({super.key});

  @override
  State<ott4> createState() => _ott4State();
}

class _ott4State extends State<ott4> {
  @override
  Widget build(BuildContext context) {
    return
      Consumer<ModelTheme>(
        builder: (context, ModelTheme themeNotifier, child)
    {
      return SafeArea(
        child: Scaffold(
          // backgroundColor: Colors.black87,
          body: Column(
            children: [
              //  GestureDetector(
              //
              //   onTap: ()
              //   {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => Profile()),
              //     );
              //   },
              //
              //   child: Row(
              //     children: [
              //       Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               color: Colors.white,
              //               height: 100,
              //               width: 100,
              //               child:TextButton(
              //                 onPressed: () {},
              //                   child: Row(
              //                     children: [
              //                       Icon(Icons.person,
              //                         color: Colors.black,),
              //                       SizedBox(width: 10,),
              //                     ],
              //                   )
              //               ),
              //             ),
              //           ),
              //           Text("Imam", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               color: Colors.white,
              //               height: 100,
              //               width: 100,
              //               child:TextButton(
              //                   onPressed: () {},
              //                   child: Row(
              //                     children: [
              //                       Icon(Icons.person,
              //                         color: Colors.black87,),
              //                       SizedBox(width: 10,),
              //                     ],
              //                   )
              //               ),
              //             ),
              //           ),
              //           Text(
              //             "Afan",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold),
              //           )
              //         ],
              //       ),
              //       Column(
              //         children: [
              //           Padding(
              //             padding: const EdgeInsets.all(8.0),
              //             child: Container(
              //               color: Colors.white,
              //               height: 100,
              //               width: 100,
              //               child:TextButton(
              //                   onPressed: () {},
              //                   child: Row(
              //                     children: [
              //                       Icon(Icons.person,
              //                         color: Colors.black,),
              //                       SizedBox(width: 10,),
              //                     ],
              //                   )
              //               ),
              //             ),
              //           ),
              //           Text(
              //             "Guest",
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold),
              //           )
              //         ],
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 25,
              ),

              // Container(
              //   height: 40,
              //   width: 200,
              //   child: TextButton(
              //       onPressed: () {},
              //       child: Row(
              //         children: [
              //           Icon(
              //             Icons.edit,
              //             color: Colors.white,
              //           ),
              //           SizedBox(
              //             width: 10,
              //           ),
              //           Text(
              //             "Manage Profile",
              //             style: TextStyle(
              //                 fontWeight: FontWeight.bold, color: Colors.white),
              //           ),
              //         ],
              //       )),
              // ),

              SizedBox(
                height: 25,
              ),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile()),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "MY Profile",
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 270),
                            child: Icon(Icons.keyboard_arrow_right),
                          ),
                        ],
                      ))),

              SizedBox(
                height: 25,
              ),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "App Settings",
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 230),
                            child: Icon(Icons.settings),
                          ),
                        ],
                      ))),

              SizedBox(
                height: 25,
              ),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Privacy",
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 320),
                            child: Icon(Icons.privacy_tip),
                          ),
                        ],
                      ))),

              SizedBox(
                height: 25,
              ),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Help",
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 360),
                            child: Icon(Icons.help),
                          ),
                        ],
                      ))),

              SizedBox(
                height: 25,
              ),

              Container(
                  height: 70,
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ott1()),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Sign out",
                            style: TextStyle(color: Colors.blue, fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 300),
                            child: Icon(Icons.person),
                          ),
                        ],
                      ))),

              SizedBox(
                height: 25,
              ),

              IconButton(
                icon: Icon(themeNotifier.isDark
                    ? Icons.wb_sunny
                    : Icons.nightlight_round),
                onPressed: () {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },),

            ],
          ),
        ),
      );
    });
  }
}
