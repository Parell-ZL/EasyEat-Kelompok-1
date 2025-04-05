import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => SearchBarWidgetState();
}

class SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(
            fontFamily: 'SF-Pro', fontSize: 16, color: Colors.grey.shade600),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        filled: true,
        fillColor: Colors.grey.shade400,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Icons.search,
          weight: 600,
        ),
        hintText: 'Mau makan apa hari ini?',
      ),
    );
  }
}
