import 'package:flutter/cupertino.dart';

class CupertionoDialogWidget extends StatelessWidget {
  const CupertionoDialogWidget({super.key});

  void _showCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Dialog'),
          content: const Text('This is a Cupertino-style dialog.'),
          actions: <Widget>[
            CupertinoDialogAction(
              isDefaultAction: true,
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('CupertinoDialog Example')),
        child: Center(
          child: CupertinoButton(child: const Text('Show Dialog'), onPressed: () => _showCupertinoDialog(context)),
        ),
      ),
    );
  }
}
