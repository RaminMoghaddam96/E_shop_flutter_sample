import 'package:get/get.dart';
import 'package:e_shop_flutter/models/product_cart.dart';

class FavoriteController extends GetxController {
  RxList<ProductCard> items = <ProductCard>[].obs;

  RxList<ProductCard> get favoriteItems =>
      items.where((item) => item.isFavorite).toList().obs;

  void toggleFavorite(ProductCard item) {
    item.isFavorite = !item.isFavorite;

  }
}
