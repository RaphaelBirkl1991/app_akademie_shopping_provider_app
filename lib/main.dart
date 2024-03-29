import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider_app/common/provider/product_provider.dart';
import 'package:shopping_provider_app/common/provider/shopping_cart_provider.dart';
import 'package:shopping_provider_app/shopping_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: const ShoppingApp(),
    ),
  );
}
