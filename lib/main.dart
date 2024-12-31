import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_explore/src/data/data.dart';
import 'package:flutter_application_explore/src/screens/EventsScreen.dart';
import 'package:flutter_application_explore/src/screens/ExploreDetailsScreen.dart';
import 'package:flutter_application_explore/src/screens/ExploreScreen.dart';
import 'package:flutter_application_explore/src/screens/FilterScreen.dart';
import 'package:flutter_application_explore/src/screens/NewsScreen.dart';
import 'package:flutter_application_explore/src/screens/Screen.dart';
import 'package:flutter_application_explore/src/screens/SlaskieScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      routes: {
        '/': (context) => HomeScreen(),
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  bool _visibleFillterActionButton = false;
  String _appBarTitleText = "Slaskie";

  void updateClicks(bool value) {
    setState(() {
      _visibleFillterActionButton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = <Widget>[
      SlaskieScreen(name: "Slaskie"),
      NewsScreen(name: "Aktualnosci"),
      EventsScreen(name: "Wydarzenia"),
      ExploreScreen(name: "Explore", callback: updateClicks),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
        _appBarTitleText = _selectedIndex != 3
            ? (_screens[_selectedIndex] as Screen?)?.name
            : (_screens[_selectedIndex] as ExploreScreen?)?.name;

        // debugPrint((_screens[index] as Screen?)?.name +
        //     " / " +
        //     _selectedIndex.toString());
      });
    }

    return Scaffold(
      appBar: AppBar(
        title:
            Align(alignment: Alignment.center, child: Text(_appBarTitleText)),
        actions: <Widget>[
          if (_visibleFillterActionButton)
            IconButton(
              icon: Icon(Icons.tune_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FilterSreen(),
                    ));
              },
            )
        ],
      ),
      body: Container(
        child: _screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Slaskie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_outlined),
            activeIcon: Icon(Icons.newspaper),
            label: 'Aktualnosci',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            activeIcon: Icon(Icons.calendar_month),
            label: 'Wydarzenia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            activeIcon: Icon(Icons.map),
            label: 'Exploruj',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
