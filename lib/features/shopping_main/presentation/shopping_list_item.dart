import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/features/shopping_details/shopping_details_screen.dart';

class ShoppingListItem extends StatelessWidget {
  final Product product;
  const ShoppingListItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShoppingDetailsScreen(product: product),
            ));
      },
      title: Text(product.name.toString()),
      subtitle: Text(product.description.toString()),
      leading: IconButton(
        icon: const Icon(Icons.add_shopping_cart_sharp),
        onPressed: () => {},
      ),
      trailing: Text(product.price.toString()),
    );
  }
}
