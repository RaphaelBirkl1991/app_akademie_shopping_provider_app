import 'package:flutter/material.dart';
import 'package:shopping_provider_app/features/shopping_main/presentation/shopping_main_screen.dart';

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const ShoppingMainScreen(),
      },
    );
  }
}
