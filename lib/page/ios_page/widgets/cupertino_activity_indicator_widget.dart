import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text('Cupertino Activity Indicator Example')),
        child: Center(child: CupertinoActivityIndicator(radius: 20.0)),
      ),
    );
  }
}
