import 'package:flutter/material.dart';
import '../screens/Instagram.dart';
import '../screens/Spotify.dart';
import '../screens/amazon.dart';
import 'navi3.dart';

class tntj extends StatefulWidget {
  const tntj({super.key});

  @override
  State<tntj> createState() => _tntjState();
}

class _tntjState extends State<tntj> {

  int _index = 0;

  final pages = [
    amaz(),
    spoti(),
    insta(),
    worth(),
  ];

  void tap (index)
  {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages [_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purpleAccent,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Amazon"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note_rounded),label: "Spotify"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle),label: "Instagram"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Accounts")
        ],
        currentIndex: _index,
        onTap: tap,
      )
    );
  }
}

