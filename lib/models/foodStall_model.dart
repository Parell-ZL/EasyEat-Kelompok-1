import 'package:easy_eat/models/food_model.dart';

class Foodstall {
  final String id;
  final String name;
  final String image;
  final String description;
  final bool isOpen;
  final String category;
  final List<Food> availableFoods;
  final List<Food> topFoods;

  Foodstall({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.isOpen,
    required this.category,
    required this.availableFoods,
    required this.topFoods,
  });
}

List<Foodstall> foodstallList = [
  Foodstall(
    id: "1",
    name: "Nasi Goreng kang mak",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Goreng ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Goreng Ati Ampela",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Goreng Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Goreng ati ampela",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
    topFoods: [
      Food(
          name: "Nasi Goreng ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Goreng Ati Ampela",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
  ),
  Foodstall(
    id: "2",
    name: "Nasi Bakar ",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Bakar Ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Ikan Teri",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
    topFoods: [
      Food(
          name: "Nasi Bakar ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
  ),
  Foodstall(
    id: "2",
    name: "Nasi Bakar ",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Bakar Ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Ikan Teri",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
    topFoods: [
      Food(
          name: "Nasi Bakar ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
  ),
  Foodstall(
    id: "2",
    name: "Nasi Bakar ",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Bakar Ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Ikan Teri",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
    topFoods: [
      Food(
          name: "Nasi Bakar ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "b_nasi_goreng.jpg"),
    ],
  ),
];
