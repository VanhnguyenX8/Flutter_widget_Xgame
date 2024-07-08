import 'package:flutter/cupertino.dart';

class CupertinoTextFieldWidget extends StatefulWidget {
  const CupertinoTextFieldWidget({super.key});

  @override
  _CupertinoTextFieldWidgetState createState() => _CupertinoTextFieldWidgetState();
}

class _CupertinoTextFieldWidgetState extends State<CupertinoTextFieldWidget> {
  TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // color: Color(0xFFFFFFFF),
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('CupertinoTextField Example')),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoTextField(
                  controller: controller,
                  placeholder: 'Enter text',
                  // TODO: user controller in textfield
                  // onChanged: (String value) {
                  //   setState(() {
                  //     _text = value;
                  //   });
                  // },
                ),
                const SizedBox(height: 20),
                Text('You entered: ${controller.text}', style: const TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
