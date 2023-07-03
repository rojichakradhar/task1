import 'package:flutter/material.dart';
import 'package:picmart/Homepage.dart';

void main() {
  runApp(const WallpaperApp());
}

class WallpaperApp extends StatelessWidget {
  const WallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PICMART',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('PicMart'),
        ),
        body: Center(
          child: Homepage(),
        ),
      ),
    );
  }
}
