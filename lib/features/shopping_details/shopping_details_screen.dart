import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';

class ShoppingDetailsScreen extends StatelessWidget {
  final Product product;
  const ShoppingDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Detail'),
      ),
      body: Center(
        child: Column(children: [
          const Text("Product Details"),
          Text(
            product.name,
          ),
          Text(product.description),
          Text(product.price.toString())
        ]),
      ),
    );
  }
}
