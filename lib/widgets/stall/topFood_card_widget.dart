import 'package:flutter/material.dart';

class TopfoodCardWidget extends StatelessWidget {
  final String name;
  final String price;
  final String image;

  const TopfoodCardWidget(
      {super.key,
      required this.name,
      required this.price,
      required this.image});

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
                      price,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF-Pro'),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.add_circle,
                  color: Color.fromRGBO(235, 232, 187, 1),
                  size: 32,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
