import 'package:flutter/material.dart';

import '../widgets/carousel.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final List<String> imgList = [
    'https://via.placeholder.com/600x400/FF0000/FFFFFF?text=Image+1',
    'https://via.placeholder.com/600x400/00FF00/FFFFFF?text=Image+2',
    'https://via.placeholder.com/600x400/0000FF/FFFFFF?text=Image+3',
    'https://via.placeholder.com/600x400/FFFF00/FFFFFF?text=Image+4',
    'https://via.placeholder.com/600x400/FF00FF/FFFFFF?text=Image+5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'OFFER ZONE',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselWidget(
              imgList: imgList,
            ),
          ],
        ),
      ),
    );
  }
}
