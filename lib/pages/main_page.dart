import 'package:e_shop_flutter/pages/cart_page.dart';
import 'package:e_shop_flutter/pages/category_page.dart';
import 'package:e_shop_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'profile_page.dart';
import 'sales_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<TabData> _tabs = [
    TabData(icon: Icons.home, text: 'Home'),
    TabData(icon: Icons.category, text: 'Category'),
    TabData(icon: Icons.add_task_rounded, text: 'Sale'),
    TabData(icon: Icons.shopping_cart, text: 'Cart'),
    TabData(icon: Icons.person, text: 'Profile'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            tabAlignment: TabAlignment.center,
            controller: _tabController,
            isScrollable: true,
            onTap: (index) {
              setState(() {
                _tabController.index = index;
              });
            },
            tabs: _tabs.map((tab) {
              int tabIndex = _tabs.indexOf(tab);
              bool isSelected = _tabController.index == tabIndex;
              return Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(tab.icon,
                        color: isSelected ? Colors.purple : Colors.grey),
                    if (isSelected) ...[
                      const SizedBox(width: 8),
                      Text(tab.text, style: TextStyle(color: Colors.purple)),
                    ],
                  ],
                ),
              );
            }).toList(),
            labelPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            HomePage(),
            CategoryPage(),
            SalesPage(),
            CartPage(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}

class TabData {
  final IconData icon;
  final String text;

  TabData({required this.icon, required this.text});
}
