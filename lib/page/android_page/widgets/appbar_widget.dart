import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar widget'),
        actions: const [Icon(Icons.settings)],
        //mau sach, do mo cua Icon
        //dung khi khac theme cua Appbar
        // actionsIconTheme: const IconThemeData(color: Colors.red, opacity: BorderSide.strokeAlignCenter),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.redAccent,
        // bottom: TabBar(tabs: [Text('botom appbar'), Text('bottom appbar')]),
        bottomOpacity: BorderSide.strokeAlignCenter,
        centerTitle: true,
        // cat view ??
        clipBehavior: Clip.antiAlias,
        //kich thuoc do bong
        elevation: 1.0,
        // nổi bật nội dung <context> ??
        // excludeHeaderSemantics: true,
        // ghi đè lên Appbar
        // flexibleSpace: Text('FlexsibleSpace'),
        forceMaterialTransparency: true,
        foregroundColor: Colors.black54,
        //thay doi cac thu trong actions
        iconTheme: const IconThemeData(size: 50),
        //icon dau, mac dinh trong router thuong la backicon
        //
        // leading: Icon(Icons.back_hand),
        leadingWidth: 30,
        primary: false,
        //neu co ung dung ben duoi thi cuon dc
        scrolledUnderElevation: 100,
        shadowColor: Colors.blue,
        // shape: ShapeBorder(),
      ),
    );
  }
}
