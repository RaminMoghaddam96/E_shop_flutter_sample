import 'package:e_shop_flutter/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/category_classes.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int _selectedIndex = 0;
  double groupAlignment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.purple,
        ),
        title: const Text(
          'CATEGORIES',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications, color: Colors.purple),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite, color: Colors.purple),
          ),
        ],
      ),
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.grey[200],
            destinations: categories.map((category) {
              return NavigationRailDestination(
                icon: Icon(Icons.circle, color: category.background),
                selectedIcon: Icon(Icons.circle, color: Colors.purple),
                label: Text(category.name),
              );
            }).toList(),
            selectedIndex: _selectedIndex,
            groupAlignment: groupAlignment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          const VerticalDivider(
            thickness: 1,
            width: 1,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: categories[_selectedIndex].subcategories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => DetailsPage(),
                              arguments: categories[_selectedIndex]
                                  .subcategories[index]
                                  .replaceAll(' ', '_'));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/categories/${categories[_selectedIndex].subcategories[index].toLowerCase().replaceAll(' ', '_')}.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      categories[_selectedIndex].subcategories[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
