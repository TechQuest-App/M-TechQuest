// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:techquest/generated/l10n.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample> {
  int _selectedIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Content for selected index $_selectedIndex')),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label:S.of(context).Home,),
         BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined), label:S.of(context).Courses,),
         BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline), label:S.of(context).Clips),
         BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: S.of(context).Wishlist),
         BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: S.of(context).Profile),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 12),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
      onTap: (index) => setState(() => _selectedIndex = index),
    );
  }
}
