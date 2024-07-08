import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliderWidget')),
      body: Center(
        child: Slider(
          value: currentSliderValue,
          max: 100,
          divisions: 5,
          label: currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              currentSliderValue = value;
            });
          },
        ),
      ),
    );
  }
}
