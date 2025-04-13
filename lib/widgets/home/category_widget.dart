import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  final Function(String?) onCategorySelected;

  CategoryWidget({Key? key, required this.onCategorySelected}) : super(key: key);

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final List<String> categories = [
    'Semua', // Added 'Semua' for showing all stalls
    'Per-nasi-an',
    'Aneka mie',
    'Makanan kuah',
    'Minuman',
    'Snack'
  ];

  String? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = _selectedCategory == category;

          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = category == 'Semua' ? null : category;
                });
                widget.onCategorySelected(_selectedCategory);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? Theme.of(context).primaryColor // Use your primary color for selected
                      : Color.fromRGBO(255, 255, 246, 1),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                child: Center(
                  child: Text(
                    category,
                    style: TextStyle(
                      fontFamily: 'SF-Pro',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}