import 'package:easy_eat/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Switchwidget extends StatefulWidget {
  final String stallName;
  const Switchwidget({super.key, required this.stallName});

  @override
  State<Switchwidget> createState() => _SwitchwidgetState();
}

class _SwitchwidgetState extends State<Switchwidget> {
  bool _isTakeAway = false;
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return Row(
      children: [
        Text(
          "Bawa pergi    ",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontFamily: "SF-Pro", fontSize: 16),
        ),
        if (_isTakeAway)
          Text(
            "   +1.000 (biaya kemasan)",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                fontFamily: "SF-Pro",
                color: Color.fromRGBO(68, 67, 80, 1)),
          ),
        const Spacer(),
        Switch(
          value: _isTakeAway,
          onChanged: (bool value) {
            setState(() {
              _isTakeAway = value;
            });
            cartProvider.togglePackagingFee(widget.stallName, value);
          },
        ),
      ],
    );
  }
}
