import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IconButtonWidget')),
      body: Center(
        child: IconButton(
          onPressed: () {
            print('onPressed');
          },
          icon: const Icon(Icons.open_in_browser),
          tooltip: 'open',
        ),
      ),
    );
  }
}
