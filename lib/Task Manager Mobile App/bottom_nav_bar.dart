import 'package:flutter/material.dart';
import './res/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: true,
      unselectedItemColor: Colors.white,
      selectedItemColor: MyColors.sky,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      elevation: 0.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.transparent),
        BottomNavigationBarItem(
          icon: Icon(Icons.note),
          label: 'Note',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Person',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.alarm),
          label: 'Alarm',
        ),
      ],
    );
  }
}
