import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({super.key});

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
        bottom: TabBar(
          tabs: const [Text('Home'), Text('Notification'), Text('Setting')],
          // chỉnh màu đường kẻ đúng thì là trắng
          automaticIndicatorColorAdjustment: true,
          controller: _tabController,
          dividerColor: Colors.red,
          dragStartBehavior: DragStartBehavior.start,
          // splashFactory: ,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [Text('Tab 1'), Text('Tab 2'), Text('Tab 3')],
      ),
    );
  }
}
