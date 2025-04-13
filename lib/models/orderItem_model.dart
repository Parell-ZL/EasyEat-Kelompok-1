class OrderItem {
  final String food;
  int qty;
  String? selectedOption;
  double price;
  bool isPackagingFeeIncluded;
  final String stallName;

  OrderItem({
    required this.food,
    this.selectedOption,
    this.isPackagingFeeIncluded = false,
    required this.price,
    required this.qty,
    required this.stallName,
  });
}
