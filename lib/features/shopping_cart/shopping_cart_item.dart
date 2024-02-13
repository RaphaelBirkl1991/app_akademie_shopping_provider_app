import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';

class ShooooopingCartItem extends StatelessWidget {
  const ShooooopingCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, value, child) {
      return ListTile(
        title: const Text("Product Name"),
        subtitle: const Text("Product Description"),
        trailing: IconButton(
          icon: const Icon(Icons.remove_shopping_cart),
          onPressed: () => {},
        ),
      );
    });
  }
}
