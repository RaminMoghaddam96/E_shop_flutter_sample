import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        fit: BoxFit.fill,
        'assets/images/shop_cart.jpg',
      ),
    );
  }
}
