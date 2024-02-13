import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/domain/product.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';
import 'package:shopping_provider_app/features/shopping_details/shopping_details_screen.dart';

class ShoppingListItem extends StatelessWidget {
  final Product product;
  const ShoppingListItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(builder: (context, cartProvider, _) {
      return ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoppingDetailsScreen(product: product),
              ));
        },
        title: Text(product.name.toString()),
        trailing: Text(
          "${product.price} €",
          style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
        ),
      );
    });
  }
}
