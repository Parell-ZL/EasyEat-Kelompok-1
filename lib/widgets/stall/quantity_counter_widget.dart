import 'package:flutter/material.dart';

class QuantityCounterWidget extends StatefulWidget {
  final int qty;
  final void Function() decrement;
  final void Function() increment;
  const QuantityCounterWidget(
      {super.key,
      required this.qty,
      required this.increment,
      required this.decrement});

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: widget.decrement,
            icon: Icon(Icons.remove_circle, size: 30)),
        Text(
          widget.qty.toString(),
          style: TextStyle(fontSize: 20),
        ),
        IconButton(
            onPressed: widget.increment,
            icon: Icon(
              Icons.add_circle,
              size: 30,
            )),
      ],
    );
  }
}
