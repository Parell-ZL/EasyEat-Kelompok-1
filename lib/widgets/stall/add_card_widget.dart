import 'package:easy_eat/models/food_model.dart';
import 'package:easy_eat/widgets/stall/quantity_counter_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddCardWidget extends StatelessWidget {
  final Food food;
  final double total;
  final void Function() decrement;
  final int qty;
  final void Function() increment;
  final void Function() onAddToCart;

  const AddCardWidget(
      {super.key,
      required this.food,
      required this.qty,
      required this.increment,
      required this.decrement,
      required this.total,
      required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
        color: Color.fromRGBO(255, 255, 246, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuantityCounterWidget(
              qty: qty, increment: increment, decrement: decrement),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id_ID', symbol: '', decimalDigits: 0)
                          .format(total),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(206, 235, 187, 1),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: onAddToCart,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        SizedBox(width: 5),
                        Text("Tambah"),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
