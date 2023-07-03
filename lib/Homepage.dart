// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:picmart/description.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  final List<String> items = [
    'assets/images/img1.jpeg',
    'assets/images/img2.jpeg',
    'assets/images/img3.webp',
    'assets/images/img4.webp',
    'assets/images/img5.webp',
    'assets/images/img6.webp',
    'assets/images/img7.jpeg',
    'assets/images/img8.webp',
    'assets/images/img9.jpeg',
    'assets/images/img10.jpeg',
    'assets/images/img11.jpeg',
    'assets/images/img12.jpeg'
  ];

  final List<String> descriptions = [
    'provides chilling vibes in the beach',
    'its a blue aesthetic picture',
    'cute little cat walking in street  ',
    'living room wall decor',
    'crystal rose',
    'rosegold room decor',
    'aesthetic butterfly pic',
    'brown beige aesthetic posture',
    'flower pic',
    'flower pic',
    'instagram pic',
    'instagram pic'
    // Add more descriptions for each image
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          // return GestureDetector(
          //   onTap: () {},
          //   child: Center(
          //     child: Text(items[index]),
          //   ),
          // );
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DescriptionPages(
                      image: items[index], description: descriptions[index]),
                ),
              );
            },
            child: Image.asset(
              items[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
