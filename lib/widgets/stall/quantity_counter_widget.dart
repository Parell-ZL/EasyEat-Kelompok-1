import 'package:flutter/material.dart';

class QuantityCounterWidget extends StatefulWidget {
  const QuantityCounterWidget({super.key});

  @override
  State<QuantityCounterWidget> createState() => _QuantityCounterWidgetState();
}

class _QuantityCounterWidgetState extends State<QuantityCounterWidget> {
  int count = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void increment() {
    setState(() {
      count++;
    });
  }

  void decrement() {
    setState(() {
      if (count == 1) return;
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: decrement, icon: Icon(Icons.remove_circle, size: 30)),
        Text(
          count.toString(),
          style: TextStyle(fontSize: 20),
        ),
        IconButton(
            onPressed: increment,
            icon: Icon(
              Icons.add_circle,
              size: 30,
            )),
      ],
    );
  }
}
