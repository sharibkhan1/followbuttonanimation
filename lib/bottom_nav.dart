import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  static final icons = <Icon>[
    Icon(Icons.description),
    Icon(Icons.hail_outlined),
    Icon(Icons.g_translate_outlined),
    Icon(Icons.h_mobiledata),
    Icon(Icons.cabin),
  ];
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) =>BottomNavigationBar(
    // selectedItemColor: Colors.red,
    // unselectedItemColor: Colors.grey,
    // iconSize: 25,
    // selectedIconTheme: IconThemeData(size: 40),
    // currentIndex: 2,
    items: icons.map((icon)=>
        BottomNavigationBarItem(icon:icon)
  )
        .toList(),
  );
}
