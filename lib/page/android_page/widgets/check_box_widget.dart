import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckboxWidget')),
      body: Center(
        child: Checkbox(
          checkColor: Colors.white,
          value: _value,
          onChanged: (bool? value) {
            setState(() {
              _value = value!;
            });
          },
        ),
      ),
    );
  }
}
