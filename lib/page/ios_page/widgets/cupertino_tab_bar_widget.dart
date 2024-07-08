import 'package:flutter/cupertino.dart';

class CupertinoTabBarWidget extends StatelessWidget {
  const CupertinoTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      // color: Color(0xFFFFFFFF),
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings), label: 'Settings'),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (context) {
              switch (index) {
                case 0:
                  return const HomePageCupertionTabBar();
                case 1:
                  return const SettingsPageCupertionTabBar();
                default:
                  return Container();
              }
            },
          );
        },
      ),
    );
  }
}

class HomePageCupertionTabBar extends StatelessWidget {
  const HomePageCupertionTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Home')),
      child: Center(child: Text('Home Page Content')),
    );
  }
}

class SettingsPageCupertionTabBar extends StatelessWidget {
  const SettingsPageCupertionTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Settings')),
      child: Center(child: Text('Settings Page Content')),
    );
  }
}
