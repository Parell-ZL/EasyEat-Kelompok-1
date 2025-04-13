import 'package:easy_eat/models/food_model.dart';
import 'package:easy_eat/models/orderItem_model.dart';
import 'package:easy_eat/widgets/stall/addOns_radio_widget.dart';
import 'package:easy_eat/widgets/stall/add_card_widget.dart';
import 'package:easy_eat/widgets/stall/option_radio_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:easy_eat/providers/cart_provider.dart';

class BottomSheetWidget extends StatefulWidget {
  final Food food;
  final String stallName;
  const BottomSheetWidget(
      {super.key, required this.food, required this.stallName});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  int qty = 1;
  double addons = 0;
  String? selectedOption;

  double get totalPrice => addons + qty * widget.food.price;

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.85;

    void _increment() => setState(() => qty++);
    void _decrement() => setState(() => qty > 1 ? qty-- : null);

    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    void _addToCart() {
      final orderItem = OrderItem(
        food: widget.food.name,
        qty: qty,
        selectedOption: selectedOption,
        price: totalPrice,
        stallName: widget.stallName,
      );
      cartProvider.addItem(orderItem);
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("${widget.food.name} berhasil ditambahkan!"),
          duration: const Duration(milliseconds: 700),
        ),
      );
    }

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.food.frontImage,
                    fit: BoxFit.cover,
                  ),
                ),
                back: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    widget.food.backImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                widget.food.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Divider(color: Colors.grey.shade400),
              if (widget.food.options.isNotEmpty)
                OptionFoodWidget(
                    options: widget.food.options,
                    onSelected: (value) => selectedOption = value),
              const SizedBox(height: 15),
              if (widget.food.addons.isNotEmpty)
                AddonsRadioWidget(
                  options: widget.food.addons,
                  onSelected: (value) => setState(
                    () {
                      addons = value;
                    },
                  ),
                ),
              AddCardWidget(
                food: widget.food,
                qty: qty,
                total: totalPrice, // Kirim total ke AddCardWidget
                increment: _increment,
                decrement: _decrement,
                onAddToCart: () => _addToCart(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
