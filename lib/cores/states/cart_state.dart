import 'package:dress_market/cores/models/product.dart';
import 'package:flutter/material.dart';

class CartState extends ChangeNotifier {
  final List<Product> _cartItems = [];
  List<Product> get cartItems => _cartItems;
  void addToCart(Product product, BuildContext context) {
    if (!_cartItems.contains(product)) {
      _cartItems.add(product);
      notifyListeners();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Product is already in the cart'),
        backgroundColor: Colors.red,
        ),
      );
    }
  }

  void removeFromCart(Product product, BuildContext context) {
    _cartItems.remove(product);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Product removed from the cart'),backgroundColor: Colors.green,),
    );
    notifyListeners();
  }
}
