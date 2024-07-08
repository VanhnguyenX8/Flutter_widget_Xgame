import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScafolldWidget extends StatelessWidget {
  const ScafolldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold')),
      // backgroundColor: Colors.,
      body: Container(),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), tooltip: 'home'),
      //   BottomNavigationBarItem(icon: Icon(Icons.search), tooltip: 'search'),
      //   BottomNavigationBarItem(icon: Icon(Icons.settings), tooltip: 'settings'),
      // ]),
      // bottomSheet: const Text('bottomSheet'),
      drawer: const Drawer(
        child: Text('drawer'),
      ),
      //Xac dinh cac su ly hanh vi
      //can xem lai
      drawerDragStartBehavior: DragStartBehavior.down,
      //chieu rong thanh drawer duoc keo
      drawerEdgeDragWidth: 40,
      //xac dinh cu chi keo
      //tren nen tang app destop thi mac dinh false
      drawerEnableOpenDragGesture: true,
      //test lai cai nay, chua hieu ro
      //scrim ??
      drawerScrimColor: Colors.black26,
      // hinh nhu widget nay trung drawer
      // endDrawer: ,
      //true body mo rong den duoi cung Scafold, qua phan bottom
      // dung khi bottomNavigatorBar k phai hinh chu nhat
      extendBody: true,
      //dung thi chieu cao phan than se mo rong den thanh ung dung
      extendBodyBehindAppBar: true,
      floatingActionButton: const FloatingActionButton(onPressed: null, child: Text('Button')),
      //animation local moi
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,

      key: key,
      onDrawerChanged: (isOpened) {
        print('open');
      },
      persistentFooterAlignment: AlignmentDirectional.center,
      // persistentFooterButtons: const [
      //   TextButton(onPressed: null, child: Text('Button 1')),
      //   TextButton(onPressed: null, child: Text('Button 2')),
      // ],
      // check xem no co bo qua phan dem khong
      primary: false,
      //thay doi kich thuoc body khi mo textfild chang han
      resizeToAvoidBottomInset: false,
      //Lien quan den he dieu hanh
      restorationId: 'Test restore',
    );
  }
}
