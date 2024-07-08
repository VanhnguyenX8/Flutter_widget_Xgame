import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextButton(onPressed: () => goToWigetAndroid(const ScafolldWidget(), context), child: const Text('ScafolldWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const AppBarWidget(), context), child: const Text('AppBarWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const BottomNavigationBarWidget(), context), child: const Text('BottomNavigationBarWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const TabBarWidget(), context), child: const Text('TabBarWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const TabBarViewWidget(), context), child: const Text('TabBarViewWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const ListTitleWidget(), context), child: const Text('ListTitleWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const RaisedButtonWidget(), context), child: const Text('RaisedButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const FloatingActionButtonWidget(), context), child: const Text('FloatingActionButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const FlatButtonWidget(), context), child: const Text('FlatButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const IconButtonWidget(), context), child: const Text('IconButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const DropDownButtonWidget(), context), child: const Text('DropDownButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const PopupMenuButtonWidget(), context), child: const Text('PopupMenuButtonWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const ButtonBarWidget(), context), child: const Text('ButtonBarWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const TextFieldWidget(), context), child: const Text('TextFieldWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const CheckboxWidget(), context), child: const Text('CheckboxWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const RadioWidget(), context), child: const Text('RadioWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const SwitchWidget(), context), child: const Text('SwitchWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const SliderWidget(), context), child: const Text('SliderWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const TimePickerWidget(), context), child: const Text('TimePickerWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const SimpleDialogWidget(), context), child: const Text('SimpleDialogWidget')),
          TextButton(onPressed: () => goToWigetAndroid(const AlertDialogWidget(), context), child: const Text('AlertDialogWidget')),
        ],
      ),
    );
  }

  void goToWigetAndroid(Widget widget, BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
  }
}
