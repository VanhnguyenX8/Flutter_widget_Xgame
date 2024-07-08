import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  const RaisedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Raised Button Widget')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('onPressed');
          },
          child: const Text('Raise Button'),
        ),
      ),
    );
  }
}
