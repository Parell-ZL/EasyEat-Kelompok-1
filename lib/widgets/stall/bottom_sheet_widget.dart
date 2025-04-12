import 'package:easy_eat/models/food_model.dart';
import 'package:easy_eat/widgets/stall/addOns_radio_widget.dart';
import 'package:easy_eat/widgets/stall/add_card_widget.dart';
import 'package:easy_eat/widgets/stall/option_radio_widget.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  final Food food;
  const BottomSheetWidget({super.key, required this.food});

  @override
 Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.85;
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
                    food.frontImage,
                    fit: BoxFit.cover,
                  ),
                ),
                back: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    food.backImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                food.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Divider(color: Colors.grey.shade400),
              if (food.options.isNotEmpty)
                OptionFoodWidget(options: food.options),
              const SizedBox(height: 15),
              if (food.addons.isNotEmpty)
                AddonsRadioWidget(options: food.addons),
              AddCardWidget(food: food),
            ],
          ),
        ),
      ),
    );
  }
}

