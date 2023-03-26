import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



import 'package:praktikum_mobile/biodata_page.dart';
import 'package:praktikum_mobile/segitasiku_page.dart';
import 'layanglayang_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 1;

  List<Widget> _pages = [
    LayangLayangPage(),
    BiodataPage(),
    SegitigaSikuSikuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Quiz TPM')),
      ),
      body: SafeArea(child: _pages[_selectedPageIndex]),
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedPageIndex,
        backgroundColor: Colors.white24,
        color: Colors.teal,
        items: const <Widget>[
          Icon(Icons.category, color: Colors.white,),
          Icon(Icons.person, color: Colors.white,),
          Icon(Icons.change_history, color: Colors.white,),
        ],
        onTap: (int index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
      ),
    );
  }
}
