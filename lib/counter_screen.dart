import 'package:counter_app/counter_model.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final _counter = CounterModel();

  void _increaseNumber() {
    setState(() {
      _counter.increaseNumber();
    });
  }

  void _decreaseNumber() {
    setState(() {
      _counter.decreaseNumber();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
        ),
      ),
      body: Center(
        child: Text(
          "${_counter.number}",
          key: const Key("Number"),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: _decreaseNumber,
            icon: const Icon(Icons.remove),
            color: Colors.red,
            key: const Key("Decrease"),
          ),
          IconButton(
            onPressed: _increaseNumber,
            icon: const Icon(Icons.add),
            color: Colors.green,
            key: const Key("Increase"),
          ),
        ],
      ),
    );
  }
}
