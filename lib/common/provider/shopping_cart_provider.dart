import 'package:flutter/material.dart';
import 'package:shopping_provider_app/common/domain/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cartProducts = [];

  void addProduct(Product product) {
    _cartProducts.add(product);
    notifyListeners();
  }

  List<Product> get cartProducts {
    return _cartProducts;
  }
}
