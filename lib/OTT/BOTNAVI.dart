import 'package:flutter/material.dart';
import 'PRIME 4.dart';
import 'PRIME1.dart';
import 'PRIME2.dart';
import 'PRIME3.dart';

class prime extends StatefulWidget {
  const prime({super.key});

  @override
  State<prime> createState() => _primeState();
}

class _primeState extends State<prime> {
  
  int imam = 0;
  
  final pages = [
    ott2(),
    ott3(),
    ott4(),
  ];
  
  void tap (index)
  {
    setState(() {
      imam = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages [imam],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "Person")
        ],
        currentIndex: imam,
        onTap: tap,
      )
    );
  }
}
