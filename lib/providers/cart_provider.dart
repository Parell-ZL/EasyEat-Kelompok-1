import 'package:flutter/material.dart';
import '../models/food_model.dart';

class CartProvider with ChangeNotifier {
  List<Food> _cartItems = [];

  List<Food> get cartItems => _cartItems;

  void addToCart(Food food) {
    _cartItems.add(food);
    notifyListeners(); // Memberitahu UI bahwa ada perubahan
  }

  void removeFromCart(Food food) {
    _cartItems.remove(food);
    notifyListeners();
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
