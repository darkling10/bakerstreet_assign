import 'package:flutter/material.dart';

typedef void IntCallback(int id);

class BottomNavigator extends StatelessWidget {
  int index;

  final IntCallback onIndexChanged;

  static const List<BottomNavigationBarItem> _widgetOptions =
  <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.white,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
        color: Colors.white,
      ),
      label: "Settings",
    ),

  ];

  BottomNavigator({Key? key, required this.onIndexChanged, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.white,
      onTap: onIndexChanged,
      backgroundColor: const Color.fromRGBO(51, 48, 48, 1),
      items: _widgetOptions,
    );
  }
}
