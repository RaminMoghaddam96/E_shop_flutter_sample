import 'package:flutter/material.dart';

import '../models/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double get totalPrice {
    return cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.deepPurple),
        ),
        onPressed: () {},
        child: const Text(
          'Checkout',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: const Text(
          'MY BAG',
          style: TextStyle(
            color: Colors.purple,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        isThreeLine: true,
                        horizontalTitleGap: 20,
                        leading: Image.asset(
                          item.image,
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                        title: Text(item.name),
                        subtitle: Text('Size: ${item.size}\n\$${item.price}'),
                        trailing: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                      ),
                      Container(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: const ButtonStyle(
                                elevation: WidgetStatePropertyAll(1),
                                shape: WidgetStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.purple,
                              ),
                              onPressed: () {
                                setState(() {
                                  if (item.quantity > 1) item.quantity--;
                                });
                              },
                            ),
                            Text(item.quantity.toString()),
                            ElevatedButton(
                              style: const ButtonStyle(
                                elevation: WidgetStatePropertyAll(1),
                                shape: WidgetStatePropertyAll(CircleBorder()),
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.white),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.purple,
                              ),
                              onPressed: () {
                                setState(() {
                                  item.quantity++;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(10),
                        hintStyle: const TextStyle(
                          color: Colors.black26,
                        ),
                        labelText: 'Have a Promo Code?',
                        suffixIcon: FloatingActionButton(
                          backgroundColor: Colors.deepPurple,
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Total Price',
                              style: TextStyle(fontSize: 15)),
                          Text(
                            '\$${totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
