import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../views/login_screen.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
              currentAccountPicture: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://4.bp.blogspot.com/-7lKcs3VI8Kg/WtgJ__1RxaI/AAAAAAAAF9Q/6XFIxYxnGkspQc7-kvDMlzf-8cx0_khewCEwYBhgL/s1600/best%2Bprofile%2Bpics.png")),
              currentAccountPictureSize: const Size(70, 70),
              accountName: const Text("Jaimul Islam Akik"),
              accountEmail: const Text("ashrafulrehan2@gmail.com")),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo(),));
            },
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Contact"),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree(),));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add),
            title: const Text("Other"),
            onTap: () {},
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Log Out"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreen(),));
              },
            ),
          )
        ],
      ),
    );
  }
}