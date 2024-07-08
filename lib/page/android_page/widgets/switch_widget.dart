import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SwitchWidget')),
      body: Center(
        child: Switch(
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              light = value;
              print(value);
            });
          },
        ),
      ),
    );
  }
}
