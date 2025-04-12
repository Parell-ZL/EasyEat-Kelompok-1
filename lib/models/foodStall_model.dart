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
    id: "001",
    name: "Nasi Goreng Kang Mak",
    image: "assets/images/stall.jpg",
    description: "Berbgai macam nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
        name: "Nasi Goreng ayam",
        price: 20000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        options: ["Pedas", "Tidak Pedas", "Asem Manis", "Pedas Gila"],
        addons: {
          "Kerupuk Kulit": 5000,
          "Telor Ceplok": 6000,
        },
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng Ati Ampela",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng Telor Asin",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng ati ampela",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
    ],
    topFoods: [
      Food(
        name: "Nasi Goreng ayam",
        price: 20000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng Ati Ampela",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng ayam",
        price: 20000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Goreng Ati Ampela",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
    ],
  ),
  Foodstall(
    id: "002",
    name: "Nasi Bakar",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
        name: "Nasi Bakar Ayam",
        price: 20000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Bakar",
      ),
      Food(
        name: "Nasi Bakar Cumi",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Bakar",
      ),
      Food(
        name: "Nasi Bakar Telor Asin",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Bakar",
      ),
      Food(
        name: "Nasi Bakar Ikan Teri",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Bakar",
      ),
    ],
    topFoods: [
      Food(
        name: "Nasi Bakar ayam",
        price: 20000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
      Food(
        name: "Nasi Bakar Cumi",
        price: 25000,
        frontImage: "assets/images/f_nasi_goreng.jpg",
        backImage: "assets/images/b_nasi_goreng.png",
        stallName: "Nasi Goreng Kang Mak",
      ),
    ],
  ),
  Foodstall(
    id: "003",
    name: "Ricebowl Bu ati",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Bakar Ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
      Food(
          name: "Nasi Bakar Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
      Food(
          name: "Nasi Bakar Ikan Teri",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
    ],
    topFoods: [
      Food(
          name: "Nasi Bakar ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Ricebowl Bu ati"),
    ],
  ),
  Foodstall(
    id: "004",
    name: "Nasi kucing pak andi",
    image: "assets/images/stall.jpg",
    description: "Description nasi goreng",
    isOpen: true,
    category: "Category 1",
    availableFoods: [
      Food(
          name: "Nasi Bakar Ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
      Food(
          name: "Nasi Bakar Telor Asin",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
      Food(
          name: "Nasi Bakar Ikan Teri",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
    ],
    topFoods: [
      Food(
          name: "Nasi Bakar ayam",
          price: 20000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
      Food(
          name: "Nasi Bakar Cumi",
          price: 25000,
          frontImage: "assets/images/f_nasi_goreng.jpg",
          backImage: "assets/images/b_nasi_goreng.png",
          stallName: "Nasi kucing pak andi"),
    ],
  ),
];
