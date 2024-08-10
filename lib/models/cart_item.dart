class CartItem {
  final String name;
  final String size;
  final double price;
  final double originalPrice;
  int quantity;
  final double discount;
  final String image;
  CartItem({
    required this.name,
    required this.size,
    required this.price,
    required this.originalPrice,
    this.quantity = 0,
    required this.discount,
    required this.image,
  });
}

final List<CartItem> cartItems = [
  CartItem(
    name: 'Fresh Coconuts',
    size: '1kg',
    price: 600.00,
    originalPrice: 650.00,
    discount: 7.69,
    image: 'assets/images/banner.jpg',
  ),
  CartItem(
    name: 'Premium California Roasted & Salted Pistachios',
    size: '200g',
    price: 525.00,
    originalPrice: 575.00,
    discount: 9.09,
    image: 'assets/images/banner.jpg',
  ),
  CartItem(
    name: 'Purple Sleeper Sofa Bed with Storage Chaise',
    price: 459.00,
    image: 'assets/images/banner.jpg',
    size: '',
    originalPrice: 459.00,
    discount: 0,
  ),
];
