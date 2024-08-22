import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:techquest/core/theming/app_colors.dart';
import 'package:techquest/generated/l10n.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationBar();
}

class _BottomNavigationBar extends State<BottomNavigation> {
  int selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: white,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined), label: S.of(context).Home),
        BottomNavigationBarItem(
            icon: const Icon(Icons.menu_book_outlined), label: S.of(context).Courses),
        BottomNavigationBarItem(
            icon: const Icon(Icons.play_circle_outline), label: S.of(context).Clips),
        BottomNavigationBarItem(
            icon: const Icon(Icons.favorite_border), label: S.of(context).Wishlist),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline), label: S.of(context).Profile),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle:  TextStyle(fontSize: 12.sp),
      unselectedLabelStyle:  TextStyle(fontSize: 10.sp),
      onTap: (index) => setState(() => selectedIndex = index),
    );
  }
}
