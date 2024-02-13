import 'package:flutter/material.dart';

class ShoppingCartButton extends StatelessWidget {
  const ShoppingCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            icon: const Icon(Icons.shopping_cart_sharp), onPressed: () {}),
        const Positioned(
          right: 0,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 10,
            child: Text(
              "8",
              style: TextStyle(
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
