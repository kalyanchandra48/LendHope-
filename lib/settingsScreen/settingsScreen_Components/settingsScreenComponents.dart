import 'package:flutter/material.dart';
import 'package:lendhope/commonWidgets/settingsWidget.dart';

class SettingsScreenComponents extends StatelessWidget {
  SettingsScreenComponents({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 2,
	separatorBuilder: (BuildContext context, int index) => const SizedBox(height:20),
        itemBuilder: (BuildContext context, int index) {
          return SettingsWidget(
              text: index == 0 ? 'About Hope WorldWide' : 'Logout',
              image: index == 0 ? 'assets/hopelogo.png' : 'assets/icon.png');
        });
  }
}
