class OrderItem {
  final String food;
  int qty;
  String? selectedOption;
  double price;
  final String stallName;

  OrderItem({
    required this.food,
    this.selectedOption,
    required this.price,
    required this.qty,
    required this.stallName,
  });

  // double get totalPrice {
  //   double price = food.price;
  //   if (selectedAddon != null) {
  //     price += food.addons[selectedAddon] ?? 0;
  //   }
  //   return price * quantity;
  // }
}
