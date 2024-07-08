import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study/page/ios_page/widgets/widgets.dart';

class IosPage extends StatelessWidget {
  const IosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoButtonWidget(), context), child: const Text('CupertinoButton')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoPickerWidget(), context), child: const Text('CupertinoPickerWidget')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoDatePickerWidget(), context), child: const Text('CupertinoDatePicker')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoTimePickerWidget(), context), child: const Text('CupertinoTimePickerWidget')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoNavigationBar(), context), child: const Text('CupertinoNavigationBar')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoTabBarWidget(), context), child: const Text('CupertinoTabBarWidget')),
          TextButton(
            onPressed: () => goToWidgetIOs(const CupertinoTabBarScaffoldWidget(), context),
            child: const Text('CupertinoTabBarScaffoldWidget'),
          ),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoTabViewWidget(), context), child: const Text('CupertinoTabViewWidget')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoTextFieldWidget(), context), child: const Text('CupertinoTextFieldWidget')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertionoDialogWidget(), context), child: const Text('CupertionoDialogWidget')),
          TextButton(
            onPressed: () => goToWidgetIOs(const CupertinoDialogActionWidget(), context),
            child: const Text('CupertinoDialogActionWidget')
          ),
          TextButton(
            onPressed: () => goToWidgetIOs(const CupertinoFullscreenDialogTransitionWidget(), context),
            child: const Text('CupertinoFullscreenDialogTransitionWidget'),
          ),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoPageScaffoldWidget(), context), child: const Text('CupertinoPageScaffoldWidget')),
          TextButton(
              onPressed: () => goToWidgetIOs(const CupertinoPageTransitionWidget(), context), child: const Text('CupertinoPageTransitionWidget')),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoActionSheetWidget(), context), child: const Text('CupertinoActionSheetWidget')),
          TextButton(
            onPressed: () => goToWidgetIOs(const CupertinoActivityIndicatorWidget(), context),
            child: const Text('CupertinoActivityIndicatorWidget'),
          ),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoAlertDialogWidget(), context), child: const Text('CupertinoAlertDialogWidget')),
          TextButton(
            onPressed: () => goToWidgetIOs(const CupertinoPopupSurfaceWidget(), context),
            child: const Text('CupertinoPopupSurfaceWidget'),
          ),
          TextButton(onPressed: () => goToWidgetIOs(const CupertinoSliderWidget(), context), child: const Text('CupertinoSliderWidget')),
        ],
      ),
    );
  }

  void goToWidgetIOs(Widget widget, BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
