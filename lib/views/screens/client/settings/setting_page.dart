import 'package:dress_market/cores/states/theme_mode_state.dart';
import 'package:dress_market/views/widgets/app_bar_custom.dart';
import 'package:dress_market/views/widgets/page_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: "DressMarket"),
      body: PageContainer(
        body: Column(
          children: [
            SwitchListTile(
              activeTrackColor: Colors.green,
              title: Text("Mode sombre"),
              value: context.watch<ThemeModeState>().isDark,
              onChanged: (value) {
                context.read<ThemeModeState>().toggle();
                setState(() {
                  isDarkMode = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
