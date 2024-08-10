import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.purple),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/brands/puma.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Admin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('9876543210'),
            Text('wrteam.anish@gmail.com'),
            SizedBox(height: 20),
            ProfileOption(
              icon: Icons.shopping_bag,
              title: 'My Orders',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.location_on,
              title: 'Manage Address',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.account_balance_wallet,
              title: 'My Wallet',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.local_offer,
              title: 'Your Promo Codes',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.receipt_long,
              title: 'My Transactions',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.color_lens,
              title: 'Change Theme',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.language,
              title: 'Change Language',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.card_giftcard,
              title: 'Refer and Earn',
              onTap: () {},
            ),
            ProfileOption(
              icon: Icons.support,
              title: 'Customer Support',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileOption({required this.icon, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
