import 'package:e_shop_flutter/models/product_cart.dart';
import 'package:e_shop_flutter/utiles/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/subcategories_item.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final FavoriteController controller = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: TextStyle(color: Colors.purple),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: controller.items.isEmpty
          ? Center(
              child: Text('No favorite YEt'),
            )
          : ListView.builder(
              shrinkWrap: true,
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return ProductCard(
                    discount: controller.items[index].discount,
                    imageUrl: controller.items[index].imageUrl,
                    name: controller.items[index].name,
                    size: controller.items[index].size,
                    rating: controller.items[index].rating,
                    originalPrice: controller.items[index].originalPrice,
                    discountedPrice: controller.items[index].discountedPrice,
                    reviews: controller.items[index].reviews);
              },
            ),
    );
  }
}
