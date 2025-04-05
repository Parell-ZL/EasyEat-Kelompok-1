class Ads {
  final String id;
  final String image;
  final String title;

  Ads({required this.id, required this.image, required this.title});
}

List<Ads> adsList = [
  Ads(
      id: "Ad1",
      image: "assets/images/ads-1.jpg",
      title: "Spesial Beli 1 Gratis 1"),
  Ads(
      id: "Ad2",
      image: "assets/images/ads-1.jpg",
      title: "Spesial Beli 1 Gratis 2"),
  Ads(
      id: "Ad3",
      image: "assets/images/ads-1.jpg",
      title: "Spesial Beli 1 Gratis 3"),
  Ads(
      id: "Ad",
      image: "assets/images/ads-1.jpg",
      title: "Spesial Beli 1 Gratis 4"),
];
