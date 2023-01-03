
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/data/models/products.dart';

final cartProvider = ChangeNotifierProvider<CartProvider>((ref){
  return CartProvider();
});

class CartProvider extends ChangeNotifier{
  final List<Product> _cart = [];

  List<Product> get cart => _cart;

  void addProducts(Product product){
    _cart.add(product);
     notifyListeners();
  }

  void removeProducts(Product product){
    _cart.remove(product);
    notifyListeners();
  }

  void clearProducts(){
    _cart.clear();
    notifyListeners();
  }
}