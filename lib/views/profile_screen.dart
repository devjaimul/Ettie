import 'package:assignment_app/widgets/custom_navBar.dart';
import 'package:assignment_app/widgets/image_picker.dart';
import 'package:assignment_app/widgets/profile_items.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
          onPressed: () {
            //Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomNavbar(),));
          },
          icon: const Icon(Icons.keyboard_backspace),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ImgPicker(),
            SizedBox(height: 20,),
            ProfileItems(),

          ],
        ),
      ),
    );
  }
}
