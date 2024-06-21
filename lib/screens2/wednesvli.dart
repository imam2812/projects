import 'package:flutter/material.dart';

class thermo extends StatefulWidget {
  const thermo({super.key});

  @override
  State<thermo> createState() => _thermoState();
}

class _thermoState extends State<thermo> {
  int _index=0;

  final pages =[
    Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

        ],
      ),
    ),

    ),
    Center(
      child: Column(
        children: [
          SizedBox(height: 350,),
          TextFormField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              hintText: "Search Here",
              border: OutlineInputBorder()
            ),
          )
        ],
      ),
    ),
    Center(
      child: Container(
        height: 400,
        width: 400,
        child: Image.asset("gym.png"),
        ),
      ),
    Center(
      child: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Profile"),
        actions: [
          Icon(Icons.close)
        ],
        backgroundColor: Colors.cyan,
      ),
    )
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
        type:  BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
        ],
        currentIndex: _index,
        onTap: tap,
      ),
    );
  }
}
