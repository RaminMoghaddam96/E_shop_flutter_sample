import 'package:e_shop_flutter/pages/cart_page.dart';
import 'package:e_shop_flutter/pages/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/cart_item.dart';
import '../models/product_cart.dart';
import '../models/subcategories_item.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final String subcategoryName = Get.arguments;

  @override
  Widget build(BuildContext context) {
    List<ItemsList>? items = (subcategoryItems[subcategoryName] ?? []).cast<ItemsList>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          subcategoryName,
          style: const TextStyle(
            color: Colors.purple,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => FavoritesPage());
            },
            icon: const Icon(Icons.favorite),
          ),
          IconButton(
            onPressed: () {
              Get.to(() => CartPage());
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            SizedBox(height: 10),
            //filter
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.filter_list),
                        Text('Filter By'),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.sort),
                        Text('Sort By'),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.grid_view),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  discount: items[index].discount,
                  imageUrl: items[index].imageUrl,
                  name: items[index].name,
                  size: items[index].size,
                  rating: items[index].rating,
                  originalPrice: items[index].originalPrice,
                  discountedPrice: items[index].discountedPrice,
                  reviews: items[index].reviews,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
