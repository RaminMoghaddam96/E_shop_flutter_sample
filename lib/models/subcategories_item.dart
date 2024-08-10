import 'product_cart.dart';

Map<String, List<ProductCard>> subcategoryItems = {
  'Electronics': [
    ProductCard(
      discount: '10%',
      imageUrl: 'assets/categories/drinks.jpg',
      name: 'Smartphone',
      size: '6.5 inches',
      rating: 4,
      originalPrice: 1000,
      discountedPrice: 900,
      reviews: 200,
    ),
    ProductCard(
      discount: '15%',
      imageUrl: 'assets/categories/drinks.jpg',
      name: 'Laptop',
      size: '15.6 inches',
      rating: 5,
      originalPrice: 1200,
      discountedPrice: 1020,
      reviews: 150,
    ),
    ProductCard(
      discount: '5%',
      imageUrl: 'assets/categories/drinks.jpg',
      name: 'Headphones',
      size: 'Over-ear',
      rating: 4,
      originalPrice: 200,
      discountedPrice: 190,
      reviews: 300,
    ),
  ],
  'Accessories': [
    ProductCard(
      discount: '20%',
      imageUrl: 'assets/categories/drinks.jpg',
      name: 'Watch',
      size: 'Medium',
      rating: 5,
      originalPrice: 200,
      discountedPrice: 160,
      reviews: 100,
    ),
    ProductCard(
      discount: '10%',
      imageUrl: 'assets/categories/drinks.jpg',
      name: 'Sunglasses',
      size: 'One Size',
      rating: 4,
      originalPrice: 50,
      discountedPrice: 45,
      reviews: 50,
    ),
  ],
  // Add other subcategories similarly...
};
