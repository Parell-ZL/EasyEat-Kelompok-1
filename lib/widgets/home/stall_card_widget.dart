import 'package:easy_eat/models/foodStall_model.dart';
import 'package:flutter/material.dart';

class StallCardWidget extends StatelessWidget {
  final Foodstall stall;
  final Function onTap;
  const StallCardWidget({super.key, required this.stall, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 120,
            minHeight: 120,
            maxWidth: 120,
            minWidth: 120,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              stall.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              stall.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            for (var menu in stall.availableFoods)
              Text(
                "• ${menu.name}",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              )
          ],
        )
      ]),
    );
  }
}
