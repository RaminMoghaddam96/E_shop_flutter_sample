import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('e_shop'),
          Text('Wellcometo eSHop'),
          Text('sign in to your account'),
          TextButton(
            onPressed: () {},
            child: Text('Sign in'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Create an account'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Guest'),
          ),
        ],
      ),
    );
  }
}
