import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';
import 'package:shopping_provider_app/features/shopping_cart/shopping_cart_screen.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    return Stack(
      children: [
        IconButton(
            icon: const Icon(Icons.shopping_cart_sharp),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShoppingCartScreen(),
                  ));
            }),
        if (cartProvider.cartProducts.isNotEmpty)
          Positioned(
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.red,
              radius: 10,
              child: Text(
                cartProvider.cartProducts.length.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
