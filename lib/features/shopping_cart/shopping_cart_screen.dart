import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = CartProvider();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, _) {
          bool noProducts = cartProvider.cartProducts.isEmpty;
          return Center(
            child: noProducts
                ? const Text(
                    'No products in cart',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Text(
                          'Products in cart: ${cartProvider.cartProducts.length}',
                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        const SizedBox(height: 30),
                        for (var product in cartProvider.cartProducts)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Text(
                                "${product.price} €\n",
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        const Spacer(),
                        const Spacer(),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
