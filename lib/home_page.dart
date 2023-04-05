
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:praktikum_mobile/biodata_page.dart';
import 'package:praktikum_mobile/calendar_page.dart';

import 'calculate_page.dart';




class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 1;

  List<Widget> _pages = [
    CalculatePage(),
    CalendarPage(),
    BiodataPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('UTS Mobile')),
      ),
      body: SafeArea(child: _pages[_selectedPageIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedPageIndex,
        backgroundColor: Colors.white24,
        color: Colors.teal,
        items: const <Widget>[
          Icon(Icons.calculate_rounded, color: Colors.white,),
          Icon(Icons.calendar_month_rounded, color: Colors.white,),
          Icon(Icons.person, color: Colors.white,),
          Icon(Icons.logout_rounded, color: Colors.white,),

        ],
        onTap: (int index) {
          if (index == 3) {
            Logout();
          }else{
            setState(() {
              _selectedPageIndex = index;
            });
          }
        },
      ),
    );
  }

  void Logout() {
    Navigator.pushReplacementNamed(context, '/logout');
  }
}
