import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int _selectedValue = 1;

  void _handleRadioValueChange(int? value) {
    setState(() {
      _selectedValue = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RadioWidget')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: const Text('Option 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChange,
            ),
          ),
          ListTile(
            title: const Text('Option 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChange,
            ),
          ),
          ListTile(
            title: const Text('Option 3'),
            leading: Radio<int>(
              value: 3,
              groupValue: _selectedValue,
              onChanged: _handleRadioValueChange,
            ),
          ),
          Text(
            'Selected option: $_selectedValue',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
