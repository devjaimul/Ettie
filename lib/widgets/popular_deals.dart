import 'package:assignment_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({super.key});

  @override
  Widget build(BuildContext context) {
    List <Map> items=[
     { 'img':'https://www.startech.com.bd/image/cache/catalog/mobile/oneplus/nord-n30-se/nord-n30-se-01-500x500.png',
       'title':'OnePlus Nord N30 SE 5G Smartphone',
       'price':'Price : 15,999'
     },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/laptop/lenovo/legion-7-16arha7/legion-7-16arha7-06-500x500.webp',
        'title':'Lenovo Legion 7 16ARHA7 Ryzen 9 6900HX RX 6850M 12GB Graphics 16" Gaming Laptop',
        'price':'Price : 235,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/laptop/msi/stealth-16-studio-a13vg-407bd/stealth-16-studio-a13vg-407bd-pure-white-01-500x500.webp',
        'title':'MSI Stealth 16 Studio A13VG-407BD Core i9 13th Gen RTX 4070 8GB Graphics 16" UHD+ Gaming Laptop',
        'price':'Price : 285,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/desktop-pc/all-in-one/lenovo/f0gh003dlk/f0gh003dlk-01-500x500.webp',
        'title':'Lenovo IdeaCentre AIO 3 24IAP7 Core i5 13th Gen 23.8" All-in-One Desktop PC',
        'price':'Price : 95,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/digital-camera/sony/alpha-a6400/alpha-a6400-1-500x500.jpg',
        'title':'Sony Alpha A6400 Mirrorless Digital Camera with 16-50mm Lens',
        'price':'Price : 96,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/mobile/oneplus/nord-n30-se/nord-n30-se-01-500x500.png',
        'title':'OnePlus Nord N30 SE 5G Smartphone',
        'price':'Price : 15,999৳'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/laptop/lenovo/legion-7-16arha7/legion-7-16arha7-06-500x500.webp',
        'title':'Lenovo Legion 7 16ARHA7 Ryzen 9 6900HX RX 6850M 12GB Graphics 16" Gaming Laptop',
        'price':'Price : 235,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/laptop/msi/stealth-16-studio-a13vg-407bd/stealth-16-studio-a13vg-407bd-pure-white-01-500x500.webp',
        'title':'MSI Stealth 16 Studio A13VG-407BD Core i9 13th Gen RTX 4070 8GB Graphics 16" UHD+ Gaming Laptop',
        'price':'Price : 285,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/laptop/msi/stealth-16-studio-a13vg-407bd/stealth-16-studio-a13vg-407bd-pure-white-01-500x500.webp',
        'title':'MSI Stealth 16 Studio A13VG-407BD Core i9 13th Gen RTX 4070 8GB Graphics 16" UHD+ Gaming Laptop',
        'price':'Price : 285,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/desktop-pc/all-in-one/lenovo/f0gh003dlk/f0gh003dlk-01-500x500.webp',
        'title':'Lenovo IdeaCentre AIO 3 24IAP7 Core i5 13th Gen 23.8" All-in-One Desktop PC',
        'price':'Price : 95,000'
      },
      { 'img':'https://www.startech.com.bd/image/cache/catalog/digital-camera/sony/alpha-a6400/alpha-a6400-1-500x500.jpg',
        'title':'Sony Alpha A6400 Mirrorless Digital Camera with 16-50mm Lens',
        'price':'Price : 96,000'
      },

    ];
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final data=items[index];
        return Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
               radius: 30,
              //maxRadius: 100,
             // minRadius: 10,
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(data['img']),
            ),
            title: HeadingTwo(data: data['title']),
            subtitle: HeadingThree(data: data['price']),
            trailing: const Icon(Icons.arrow_forward_outlined),
          ),
        );
      },);
  }
}
