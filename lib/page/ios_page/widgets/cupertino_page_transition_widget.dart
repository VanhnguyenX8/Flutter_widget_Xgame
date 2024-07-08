import 'package:flutter/cupertino.dart';

class CupertinoPageTransitionWidget extends StatelessWidget {
  const CupertinoPageTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('First Page')),
      child: Center(
        child: CupertinoButton(
          child: const Text('Go to Second Page'),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SecondPagePageTransitionWidget()));
          },
        ),
      ),
    );
  }
}

class SecondPagePageTransitionWidget extends StatelessWidget {
  const SecondPagePageTransitionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text('Second Page')),
      child: Center(
        child: CupertinoButton(
          child: const Text('Back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
