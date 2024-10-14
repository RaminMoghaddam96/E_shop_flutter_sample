import 'package:e_shop_flutter/models/category_classes.dart';
import 'package:e_shop_flutter/pages/details_page.dart';
import 'package:e_shop_flutter/utiles/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/carousel.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final List<String> imgList = [
    'assets/brands/apple.jpg',
    'assets/brands/lenovo.jpg',
    'assets/brands/PLUS.png',
    'assets/brands/puma.jpg',
  ];
  final List<String> imgList2 = [
    'assets/brands/apple.jpg',
    'assets/brands/lenovo.jpg',
    'assets/brands/PLUS.png',
    'assets/brands/puma.jpg',
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
            onPressed: () {
              Get.to(
                () => FavoriteController(),
              );
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              height: 200,
              child: CarouselWidget(
                imgList: imgList,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width - 20,
              height: 200,
              child: CarouselWidget(
                imgList: imgList,
              ),
            ),
            SizedBox(
              width: 400,
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => DetailsPage(),
                          arguments: categories[index].name);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 100,
                      height: 200,
                      child: Image.asset(
                        categories[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Get.to(() => DetailsPage(),
                        arguments: categories[index].name);
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: 100,
                    height: 200,
                    child: Image.asset(
                      categories[index].image,
                      fit: BoxFit.cover,
                    ),
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
