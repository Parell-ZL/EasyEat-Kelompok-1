import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  final Function() onTap;
  const WelcomeTextWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20) + EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Siang,",
                style: TextStyle(
                  fontFamily: 'SF-Pro',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Mamados",
                style: TextStyle(
                  fontFamily: 'SF-Pro',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          IconButton(onPressed: onTap, icon: Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
