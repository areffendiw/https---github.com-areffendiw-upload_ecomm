import 'package:flutter/material.dart';

import '../widgets/cart_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CartAppBar(),
        ],
      ),
    );
  }
}
