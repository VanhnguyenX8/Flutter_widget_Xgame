import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({super.key});

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int _selectedItem = 0;
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CupertinoPickerWidget')),
      body: Center(
        child: Center(
          child: CupertinoPicker(
            itemExtent: 40,
            onSelectedItemChanged: (int index) {
              setState(() {
                _selectedItem = index;
                print(_selectedItem);
              });
            },
            children: List.generate(
              items.length,
              (index) => Center(
                child: Text(items[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
