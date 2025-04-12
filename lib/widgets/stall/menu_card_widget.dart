import 'package:flutter/material.dart';

class MenuCardWidget extends StatelessWidget {
  final food;
  final Function() onTap;
  const MenuCardWidget({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(239, 239, 232, 1),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 130,
            minHeight: 130,
            maxWidth: 130,
            minWidth: 130,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              food.frontImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                food.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                food.price.toString(),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black45,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.add_circle,
                      color: Color.fromRGBO(235, 232, 187, 1),
                      size: 32,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
