class Food {
  final String name;
  final double price;
  final String frontImage;
  final String backImage;
  final List<String> options;
  final Map<String, double> addons;
  final String stallName;

  Food(
      {required this.name,
      required this.price,
      required this.frontImage,
      required this.backImage,
      required this.stallName,
      this.options = const [],
      this.addons = const {}});
}
