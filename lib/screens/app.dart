import 'package:flutter/material.dart';
import 'package:lyrics_app/screens/home.dart';
import 'package:lyrics_app/screens/search.dart';
import 'package:lyrics_app/screens/yourlib.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [Home(), Search(), Library()];
  int currentTabIndex = 0;
//All UI design go inside build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (value) {
          print("Current Index is $value");
          print("$currentTabIndex");
          currentTabIndex = value;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: 'search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              label: 'library')
        ],
      ),
    );
  }
}
