import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Stack(
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
                      imageUrl,
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Size: $size'),
                          Row(
                            children: List.generate(5, (index) {
                              return Icon(
                                index < rating ? Icons.star : Icons.star_border,
                                color: Colors.orange,
                                size: 16.0,
                              );
                            }),
                          ),
                          Text('\$$discountedPrice',
                              style: const TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Text(
                            '\$$originalPrice',
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
                Container(
                  width: 40,
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  color: Colors.red,
                  child: Text(
                    textAlign: TextAlign.center,
                    discount!,
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
                style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(1),
                  shape: WidgetStatePropertyAll(CircleBorder()),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              const SizedBox(width: 5),
              ElevatedButton(
                style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(1),
                  shape: WidgetStatePropertyAll(CircleBorder()),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                child:  Icon(Icons.favorite_border),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
