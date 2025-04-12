import 'package:easy_eat/models/food_model.dart';
import 'package:easy_eat/widgets/stall/quantity_counter_widget.dart';
import 'package:flutter/material.dart';

class AddCardWidget extends StatelessWidget {
  final Food food;
  const AddCardWidget({super.key, required this.food});

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
          QuantityCounterWidget(),
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
                      "Rp ${food.price}",
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
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add,color: Colors.black,),
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
