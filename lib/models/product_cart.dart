import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utiles/controller.dart';

class ProductCard extends StatefulWidget {
  final String? discount;
  final String imageUrl;
  final String name;
  final String size;
  final int rating;
  final double originalPrice;
  final double discountedPrice;
  final int reviews;
  bool isFavorite;

  ProductCard({
    required this.discount,
    required this.imageUrl,
    required this.name,
    required this.size,
    required this.rating,
    required this.originalPrice,
    required this.discountedPrice,
    required this.reviews,
    this.isFavorite = false,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final FavoriteController controller = Get.put(FavoriteController());
    return Obx(
      () => Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        widget.imageUrl,
                        width: 80,
                        height: 80,
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Size: ${widget.size}'),
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  index < widget.rating
                                      ? Icons.star
                                      : Icons.star_border,
                                  color: Colors.orange,
                                  size: 16.0,
                                );
                              }),
                            ),
                            Text(
                              '\$${widget.discountedPrice}',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '\$${widget.originalPrice}',
                              style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (widget.discount != null) // Check if discount is not null
                    Container(
                      width: 40,
                      padding: const EdgeInsets.only(right: 5, left: 5),
                      color: Colors.red,
                      child: Text(
                        textAlign: TextAlign.center,
                        widget.discount!,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            right: 10,
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8.0),
                    backgroundColor: Colors.white,
                  ),
                  child: const Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
                const SizedBox(width: 5),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8.0),
                    backgroundColor: Colors.white,
                  ),
                  child: Icon(
                    widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: widget.isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    controller.toggleFavorite(widget);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
