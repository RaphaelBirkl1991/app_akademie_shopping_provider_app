import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/domain/product.dart';
import 'package:shopping_provider_app/common/presentation/shopping_cart_button.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';

class ShoppingDetailsScreen extends StatelessWidget {
  final Product product;
  const ShoppingDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: const [ShoppingCartButton()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              product.name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 35),
            Text(
              product.description,
              style:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            const SizedBox(height: 15),
            Text(
              "${product.price} €",
              style: const TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 15),
            Consumer<CartProvider>(builder: (context, cartProvider, _) {
              return IconButton(
                icon: const Icon(
                  Icons.add_shopping_cart_sharp,
                  color: Colors.green,
                  size: 40,
                ),
                onPressed: () => {cartProvider.addProduct(product)},
              );
            }),
            const Spacer(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
