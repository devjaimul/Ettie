import 'package:assignment_app/utils/text_style.dart';
import 'package:assignment_app/widgets/news_items.dart';
import 'package:assignment_app/widgets/popular_deals.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/categories.dart';
import '../widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Ettie'),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: HeadingTwo(
                    data: "Search is Under Construction !!",
                    color: AppColors.primaryColor,
                  ),
                  backgroundColor: AppColors.whiteColors.withOpacity(0.9),
                  duration: const Duration(seconds: 2),
                ));
              },
              icon: const Icon(Icons.search_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://imgs.search.brave.com/2TDQzo1nC4zmxx64di_KTDspW8CilvbH8F68uzMBk_I/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9idXJz/dC5zaG9waWZ5Y2Ru/LmNvbS9waG90b3Mv/dGVjaC1tZWV0aW5n/LWZsYXRsYXkuanBn/P3dpZHRoPTEwMDAm/Zm9ybWF0PXBqcGcm/ZXhpZj0wJmlwdGM9/MA',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const HeadingTwo(
                data: 'Categories',
                isTrue: true,
                fontSize: 22,
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomCategories(),
              const SizedBox(
                height: 10,
              ),
              const HeadingTwo(
                data: 'Popular Deals',
                isTrue: true,
                fontSize: 22,
              ),
              const SizedBox(
                height: 10,
              ),
              const PopularDeals(),
              const SizedBox(
                height: 10,
              ),
              const HeadingTwo(
                data: 'Hot News',
                isTrue: true,
                fontSize: 22,
              ),
              const SizedBox(
                height: 10,
              ),
              const NewsItems(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
