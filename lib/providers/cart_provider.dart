import 'package:easy_eat/models/orderItem_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  final List<OrderItem> _items = [];
  final Map<String, bool> _stallPackagingFees = {};

  void togglePackagingFee(String stallName, bool include) {
    _stallPackagingFees[stallName] = include;
    notifyListeners();
  }

  double get packagingFeeTotal {
    return _stallPackagingFees.values.where((v) => v).length * 1000;
  }

  List<OrderItem> get items => _items;
  Map<String, List<OrderItem>> get groupedItems {
    final map = <String, List<OrderItem>>{};

    for (var item in _items) {
      if (!map.containsKey(item.stallName)) {
        map[item.stallName] = [];
      }
      map[item.stallName]!.add(item);
    }

    return map;
  }

  List<String> get stallNames => _items
      .map((item) => item.stallName)
      .toSet() // Untuk menghindari duplikat
      .toList();

  double get totalAmount {
    double total = _items.fold(0, (sum, item) => sum + item.price);
    return total + packagingFeeTotal;
  }

  void addItem(OrderItem newItem) {
    int index = _items.indexWhere((item) =>
        item.food == newItem.food &&
        item.stallName == newItem.stallName &&
        item.selectedOption == newItem.selectedOption);
    if (index >= 0) {
      _items[index].price += newItem.price;
      _items[index].qty += newItem.qty;
    } else {
      _items.add(newItem);
    }
    notifyListeners(); // Memberitahu UI bahwa ada perubahan
  }

  void removeItem(OrderItem item) {
    _items.remove(item);
    notifyListeners();
  }

  // void clearCart() {
  //   _cartItems.clear();
  //   notifyListeners();
  // }
}
