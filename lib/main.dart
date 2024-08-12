import 'package:assignment_app/utils/app_colors.dart';
import 'package:assignment_app/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red.shade50,
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
            centerTitle: true,
            foregroundColor: Colors.white,
            titleTextStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500)
            //iconTheme: IconThemeData(color: Colors.white),
            ),
      ),
    );
  }
}
