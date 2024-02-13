import 'package:flutter/material.dart';
import 'package:shopping_provider_app/common/domain/product.dart';
import 'package:shopping_provider_app/common/shopping_helpers.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> products = getDefaultProducts();
}
