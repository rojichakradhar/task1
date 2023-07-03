import 'package:flutter/material.dart';

class DescriptionPages extends StatelessWidget {
  final String image;
  final String description;
  const DescriptionPages({
    Key? key,
    required this.image,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Description'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
              child: Image.asset(
            image,
            height: 300,
            width: 600,
          )),
          const SizedBox(height: 20),
          Text(description,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ))
        ],
      ),
      // body: Center(
      //   child: Text(description),
      // ),
    );
  }
}
