import 'package:flutter/material.dart';

class ShooooopingCartScreen extends StatelessWidget {
  const ShooooopingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool noProducts = true;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cart'),
        ),
        body: noProducts
            ? const Center(
                child: Text('No items in the cart',
                    style: TextStyle(fontSize: 24)),
              )
            : const Text("Shopping Items"));
  }
}
