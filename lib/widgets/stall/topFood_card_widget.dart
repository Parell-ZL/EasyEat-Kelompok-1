import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TopfoodCardWidget extends StatelessWidget {
  final String name;
  final double price;
  final String image;
  final Function() onTap;

  const TopfoodCardWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.image,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: 150, minHeight: 150, maxWidth: 150, minWidth: 150),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro'),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', symbol: '', decimalDigits: 0)
                          .format(price),
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro'),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
