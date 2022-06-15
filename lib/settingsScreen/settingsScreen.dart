import 'package:flutter/material.dart';
import 'package:lendhope/settingsScreen/settingsScreen_Components/settingsScreenComponents.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('Settings',
            style: TextStyle(
                letterSpacing: -1,
                color: Color(0xFF161616),
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.keyboard_backspace),
          onPressed: () {},
        ),
      ),
      body:GestureDetector(
		      onTap:(){},
      child:SettingsScreenComponents(),),
    );
  }
}
