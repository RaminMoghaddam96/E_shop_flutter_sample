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
  final List<String> imgList2 = [
    'https://via.placeholder.com/200x200/000000/FFFFFF?text=Image+1',
    'https://via.placeholder.com/200x200/00FF00/FFFFFF?text=Image+2',
    'https://via.placeholder.com/200x200/0000FF/FFFFFF?text=Image+3',
    'https://via.placeholder.com/200x200/FFFF00/FFFFFF?text=Image+4',
    'https://via.placeholder.com/200x200/FF00FF/FFFFFF?text=Image+5',
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
            SizedBox(height: 10),
            CarouselWidget(
              imgList: imgList,
            ),
            SizedBox(
              width: 400,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgList2.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    width: 100,
                    height: 200,
                    child: Image.network(
                      imgList2[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            GridView.builder(
              itemCount: imgList2.length,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(5),
                  width: 100,
                  height: 200,
                  child: Image.network(
                    imgList2[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
