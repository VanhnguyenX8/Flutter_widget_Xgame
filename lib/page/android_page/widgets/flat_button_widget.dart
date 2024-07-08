import 'package:flutter/material.dart';

class FlatButtonWidget extends StatelessWidget {
  const FlatButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlatButtonWidget')),
      body: Center(
        child: TextButton(
          onPressed: () {
            print('onPressed');
          },
          child: const Text('open'),
        ),
      ),
    );
  }
}
