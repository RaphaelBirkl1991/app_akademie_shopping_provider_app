import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/product_provider.dart';
import 'package:shoooooping_provider_app/shopping_app.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: const ShoppingApp(),
    ),
  );
}
