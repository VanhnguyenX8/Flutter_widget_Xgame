import 'package:flutter/material.dart';

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List Title Widget')),
      body: ListTile(
        leading: const Icon(Icons.person),
        title: const Text('Nguyễn Việt Anh'),
        subtitle: const Text("Email: vietanhnguyen237@gmail.com"),
        trailing: const Icon(Icons.more_vert),
        onTap: () {
          print('ontap');
        },
      ),
    );
  }
}
