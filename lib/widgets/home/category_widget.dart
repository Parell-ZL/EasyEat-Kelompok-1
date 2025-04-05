import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<String> categories = [
    'Per-nasi-an',
    'Aneka mie',
    'Makanan kuah',
    'Minuman',
    'Snack'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 246, 1),
                border: Border.all(
                  // <-- Ini yang menambahkan border
                  color: Colors.black, // Warna hitam
                  width: 0.5, // Ketebalan border
                ),
                borderRadius: BorderRadius.circular(
                    40), // BorderRadius juga perlu di sini
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              // color: Color.fromRGBO(255, 255, 246, 1),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
