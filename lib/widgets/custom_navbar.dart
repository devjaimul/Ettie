import 'package:assignment_app/views/profile_screen.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../views/home_screen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  List<Widget> screen=[
    const HomeScreen(),
      Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
     Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
     const ProfileScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          showUnselectedLabels: true,
          // showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items:  const [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined), label: "Home"),

            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border_outlined), label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.star),
                icon: Icon(Icons.star_border),
                label: "Wishlist"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.settings_rounded),
                icon: Icon(Icons.settings), label: "Profile"),
          ]),
    );
  }
}
