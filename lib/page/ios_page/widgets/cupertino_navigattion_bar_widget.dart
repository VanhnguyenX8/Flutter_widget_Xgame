import 'package:flutter/cupertino.dart';

class CupertinNavigattionBarWidget extends StatelessWidget {
  const CupertinNavigattionBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Home'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => const SecondPage()));
          },
          child: const Text('Next'),
        ),
      ),
      child: const Center(child: Text('Home Page Content')),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Second Page'),
        leading: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
      child: const Center(child: Text('Second Page Content')),
    );
  }
}
