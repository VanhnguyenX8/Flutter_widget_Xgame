import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBarViewWidget extends StatefulWidget {
  const TabBarViewWidget({super.key});

  @override
  State<TabBarViewWidget> createState() => _TabBarViewWidgetState();
}

class _TabBarViewWidgetState extends State<TabBarViewWidget> with SingleTickerProviderStateMixin {
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
          tabs: const [
            Text('tab 1'),
            Text('tab 2'),
            Text('tab 3'),
          ],
          // chỉnh màu đường kẻ đúng thì là trắng
          automaticIndicatorColorAdjustment: true,
          controller: _tabController,
          dividerColor: Colors.red,
          //xác định sự kiện kéo
          dragStartBehavior: DragStartBehavior.start,
          // splashFactory: ,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        children: const [Text('Tab 1'), Text('Tab 2'), Text('Tab 3')],
      ),
    );
  }
}
