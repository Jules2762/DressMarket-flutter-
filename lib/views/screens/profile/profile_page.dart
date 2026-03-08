import 'package:dress_market/views/widgets/app_bar_custom.dart';
import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: PageContainer(body: Column(children: [Text("hello")])),
    );
  }
}
