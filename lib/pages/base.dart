import 'package:flutter/material.dart';
import 'package:travel_apps/component/colors/genColors.dart';
import 'package:travel_apps/pages/homePage.dart';
import 'package:travel_apps/pages/pencarianPage.dart';

import 'historyPage.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {

  final _widgetMenu = [
    HomePage(),
    PencarianPage(),
    HistoryPage(),
  ];

  int _selectedIndex = 0;



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_selectedIndex.toString());
    return Scaffold(
        body: _widgetMenu.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Pencarian',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Riwayat',
            ),

          ],
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: GenColors.primaryColor,
          onTap: _onItemTapped,
        ),
    );
  }
}



