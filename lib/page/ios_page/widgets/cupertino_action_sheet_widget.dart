import 'package:flutter/cupertino.dart';

class CupertinoActionSheetWidget extends StatelessWidget {
  const CupertinoActionSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('Cupertino Action Sheet Example')),
        child: Center(
          child: CupertinoButton(
            child: const Text('Show Action Sheet'),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (BuildContext context) => CupertinoActionSheet(
                  title: const Text('Select an Option'),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: const Text('Option 1'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoActionSheetAction(
                      child: const Text('Option 2'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
