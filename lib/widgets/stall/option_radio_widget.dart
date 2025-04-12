import 'package:flutter/material.dart';

class OptionFoodWidget extends StatefulWidget {
  final List<String> options;
  const OptionFoodWidget({super.key, this.options = const []});

  @override
  State<OptionFoodWidget> createState() => _OptionFoodWidgetState();
}

class _OptionFoodWidgetState extends State<OptionFoodWidget> {
  String? selected;
  void setSelected(String? value) {
    setState(() {
      selected = value;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(height: 15),
      Row(children: [
        Text(
          "Opsi",
          style: TextStyle(
              fontSize: 20, fontFamily: "SF-Pro", fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Pilih 1",
          style: TextStyle(
              fontSize: 18,
              fontFamily: "SF-Pro",
              fontWeight: FontWeight.w400,
              color: Colors.grey),
        ),
      ]),
      const SizedBox(height: 10),
      Wrap(
        children: widget.options.map((option) {
          return Row(children: [
            Radio<String>(
              value: option,
              groupValue: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text(
              option,
              style: TextStyle(fontSize: 14),
            ),
          ]);
        }).toList(),
      )
    ]);
  }
}
