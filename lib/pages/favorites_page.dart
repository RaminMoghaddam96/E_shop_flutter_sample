import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product_cart.dart';
import '../utiles/controller.dart';

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
        title: const Text(
          'Favorites',
          style: TextStyle(color: Colors.purple),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: Obx(() {
        final favoriteItems = controller.favoriteItems;

        return favoriteItems.isEmpty
            ? const Center(
                child: Text('No Favorite Added Yet'),
              )
            : ListView.builder(
                itemCount: favoriteItems.length,
                itemBuilder: (context, index) {
                  final item = favoriteItems[index];
                  return ProductCard(
                    discount: item.discount,
                    imageUrl: item.imageUrl,
                    name: item.name,
                    size: item.size,
                    rating: item.rating,
                    originalPrice: item.originalPrice,
                    discountedPrice: item.discountedPrice,
                    reviews: item.reviews,
                    isFavorite: item.isFavorite,
                  );
                },
              );
      }),
    );
  }
}
