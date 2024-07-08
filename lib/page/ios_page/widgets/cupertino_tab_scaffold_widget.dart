import 'package:flutter/cupertino.dart';

class CupertinoTabBarScaffoldWidget extends StatelessWidget {
  const CupertinoTabBarScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return const CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(middle: Text('Home')),
                    child: Center(child: Text('Home Page Content')),
                  );
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return const CupertinoPageScaffold(
                    navigationBar: CupertinoNavigationBar(middle: Text('Settings')),
                    child: Center(child: Text('Settings Page Content')),
                  );
                },
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return const CupertinoPageScaffold(
                    child: Center(child: Text('Page not found')),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
