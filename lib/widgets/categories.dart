import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List <Map> data=[
      {
        'title':'laptop','icon':Icons.laptop,
      },
      {
        'title':'Phone','icon':Icons.phone_android_outlined,
      },
      {
        'title':'Earbuds','icon':Icons.earbuds,
      },
      {
        'title':'Speaker','icon':Icons.speaker_group,
      },
      {
        'title':'Keyboard','icon':Icons.keyboard_alt_outlined,
      },
      {
        'title':'Monitor','icon':Icons.monitor,
      },
    ];
    return GridView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        //childAspectRatio: 1,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(data[index]['icon'],size: 40,),
              const SizedBox(height: 5,),
              HeadingTwo(data: data[index]['title'],)
            ],
          ),
        );
      },
    );
  }
}