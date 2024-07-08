import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FloatingActionButtonWidget')),
      body: const Center(child: Text('')),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'add',
        child: Icon(Icons.add),
      ),
    );
  }
}
