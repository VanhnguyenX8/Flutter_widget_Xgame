import 'package:flutter/material.dart';

//TODO: chuyển sang OverflowBar
//lý do: https://api.flutter.dev/flutter/material/ButtonBar-class.html
class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ButtonBarWidget')),
      body: Center(
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextButton(child: const Text('Button 1'), onPressed: () {}),
            TextButton(child: const Text('Button 2'), onPressed: () {}),
            TextButton(child: const Text('Button 3'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
