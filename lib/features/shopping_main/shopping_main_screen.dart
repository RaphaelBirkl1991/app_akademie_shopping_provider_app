import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/presentation/shopping_cart_button.dart';
import 'package:shopping_provider_app/common/provider/product_provider.dart';
import 'package:shopping_provider_app/features/shopping_main/shopping_list_item.dart';

class ShoppingMainScreen extends StatelessWidget {
  const ShoppingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProvider>(context);
    final products = provider.products;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Shoping App'),
          actions: const [ShoppingCartButton()],
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: ((context, index) {
              final product = products[index];
              return ShoppingListItem(product: product);
            })));
  }
}
