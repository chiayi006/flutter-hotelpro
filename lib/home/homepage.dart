import 'package:flutter/material.dart';
import 'package:flutter_hotelpro/home/page1.dart';
import 'package:flutter_hotelpro/home/page2.dart';
import 'package:flutter_hotelpro/home/page3.dart';
import 'package:flutter_hotelpro/home/page4.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() =>
      _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
            backgroundColor: Color.fromARGB(255, 224, 224, 224),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Near Me',
            backgroundColor: Color.fromARGB(255, 224, 224, 224),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'My Post',
            backgroundColor: Color.fromARGB(255, 224, 224, 224),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Protile',
            backgroundColor: Color.fromARGB(255, 224, 224, 224),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, 
        unselectedItemColor: Colors.grey[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
