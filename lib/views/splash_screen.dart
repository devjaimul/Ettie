import 'dart:async';

import 'package:assignment_app/views/login_screen.dart';
import 'package:flutter/material.dart';


import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const FormScreen()),
              (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.local_library_outlined,
                color: AppColors.whiteColors,
                size: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              HeadingTwo(
                data: 'Ettie',
                color:AppColors.whiteColors ,
                fontSize: 35,
              )
            ],
          ),
        ));
  }
}