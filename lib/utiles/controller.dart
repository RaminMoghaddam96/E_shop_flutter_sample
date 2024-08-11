import 'package:e_shop_flutter/models/product_cart.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  var items = <ProductCard>[].obs;

  List<ProductCard> get favoriteItems =>
      items.where((item) => item.isFavorite).toList();

  void toggleFavorite(ProductCard item) {
    item.isFavorite = !item.isFavorite;
    items.refresh(); 
  }
}
