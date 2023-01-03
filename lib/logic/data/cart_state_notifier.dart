import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_app/data/models/products.dart';

final cartStateNotifierProvider = 
  StateNotifierProvider<CartStateNotifier, List<Product>>((ref) {
    return CartStateNotifier();
});

class CartStateNotifier extends StateNotifier<List<Product>>{
  CartStateNotifier() : super([]);


  void addProduct(Product product){

    state = [...state, product];
  }

  void clearProducts(){
    state = [];
  }
  
}

