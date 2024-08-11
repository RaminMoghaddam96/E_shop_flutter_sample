import 'package:e_shop_flutter/models/brands.dart';
import 'package:e_shop_flutter/models/category_classes.dart';
import 'package:e_shop_flutter/pages/details_page.dart';
import 'package:e_shop_flutter/pages/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.purple,
        ),
        title: const Text(
          'eSHOP',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
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
                () => FavoritesPage(),
              );
            },
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: Icon(Icons.location_on),
              title: Text('select a location'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios),
              ),
            ),
            SearchBar(),
            SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(
                        () => DetailsPage(),
                        arguments: categories[index].name,
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: categories[index].background,
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              fit: BoxFit.contain,
                              height: 50,
                              width: 50,
                              categories[index].image,
                            ),
                          ),
                          Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image.asset(
                'assets/images/banner.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brands',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: brands.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100)),
                                child: Image.asset(
                                  fit: BoxFit.contain,
                                  height: 50,
                                  width: 50,
                                  brands[index].image,
                                ),
                              ),
                              Text(
                                brands[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
