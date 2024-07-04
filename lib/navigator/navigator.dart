import 'package:flutter/material.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/pages/library.dart';
import 'package:spotify/pages/profile.dart';
import 'package:spotify/pages/search.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _Selectedindex = 0;
  void _onTapped(index){
    setState(() {
      _Selectedindex=index;
    });
  }
  List<Widget> _body= [
   HomePage(),
   Search(),
   Library(),
   Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    bottomNavigationBar: 
    BottomNavigationBar(
      currentIndex: _Selectedindex,
       onTap: _onTapped,
      backgroundColor: Colors.black,
      elevation: 0,
      items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.library_music),label: 'Library'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
    ]),
     body:Center(child:
      _body[_Selectedindex],
     ),
    );
  }
}