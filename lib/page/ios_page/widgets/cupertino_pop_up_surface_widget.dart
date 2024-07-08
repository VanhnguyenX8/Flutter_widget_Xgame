import 'package:flutter/cupertino.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('Cupertino Popup Surface Example')),
        child: Center(
          child: CupertinoButton(
            child: const Text('Show Popup'),
            onPressed: () {
              showPopup(context);
            },
          ),
        ),
      ),
    );
  }

  void showPopup(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoPopupSurface(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('This is a Cupertino Popup Surface'),
                const SizedBox(height: 16.0),
                CupertinoButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
