import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddonsRadioWidget extends StatefulWidget {
  final Map<String, double> options;
  const AddonsRadioWidget({super.key, this.options = const {}});

  @override
  State<AddonsRadioWidget> createState() => _AddonsRadioWidgetState();
}

class _AddonsRadioWidgetState extends State<AddonsRadioWidget> {
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
          "Add-Ons",
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
        children: widget.options.entries.map((entry) {
          final option = entry.key;
          final price = entry.value;
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
            Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      option,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      "+ ${NumberFormat.currency(locale: 'id_ID', symbol: '', decimalDigits: 0).format(price)}",
                      style: TextStyle(fontSize: 14),
                    ),
                  ]),
            )
          ]);
        }).toList(),
      )
    ]);
  }
}
