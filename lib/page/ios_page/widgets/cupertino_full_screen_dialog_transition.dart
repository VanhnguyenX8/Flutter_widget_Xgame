import 'package:flutter/cupertino.dart';

//TODO: cần sửa lại cái này
class CupertinoFullscreenDialogTransitionWidget extends StatelessWidget {
  const CupertinoFullscreenDialogTransitionWidget({super.key});

  void _showFullscreenDialog(BuildContext context) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        fullscreenDialog: true,
        builder: (BuildContext context) {
          return const FullscreenDialog();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(middle: Text('Cupertino Fullscreen Dialog Example')),
        child: Center(
          child: CupertinoButton(child: const Text('Show Fullscreen Dialog'), onPressed: () => _showFullscreenDialog(context)),
        ),
      ),
    );
  }
}

class FullscreenDialog extends StatelessWidget {
  const FullscreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Fullscreen Dialog'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: const Text('Done'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      child: const Center(child: Text('This is a fullscreen dialog')),
    );
  }
}
