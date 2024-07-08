import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatelessWidget {
  const PopupMenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PopupMenuButtonWidget')),
      body: Center(
        child: PopupMenuButton(
          onSelected: (value) {
            print(value);
          },
          itemBuilder: (BuildContext context) {
            return {'Option 1', 'Option 2', 'Option 3'}.map((String choice) {
              return PopupMenuItem<String>(value: choice, child: Text(choice));
            }).toList();
          },
        ),
      ),
    );
  }
}
