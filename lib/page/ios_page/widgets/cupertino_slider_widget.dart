import 'package:flutter/cupertino.dart';

class CupertinoSliderWidget extends StatelessWidget {
  const CupertinoSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Cupertino Slider Example')),
        child: Center(child: SliderWidget()),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Slider Value: $sliderValue'),
        const SizedBox(height: 20.0),
        CupertinoSlider(
          value: sliderValue,
          min: 0.0,
          max: 100.0,
          onChanged: (newValue) {
            setState(() {
              sliderValue = newValue.roundToDouble();
            });
          },
        ),
      ],
    );
  }
}
