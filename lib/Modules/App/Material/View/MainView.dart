import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../UTILS/theme/Proivder/ThemeProvider.dart';
import '../../Compnents/MaterialViews/chatView/chat.dart';
import '../../Compnents/MaterialViews/homeView/home.dart';
import '../../Compnents/MaterialViews/settingView/settings.dart';

class ScaffoldHomeView extends StatelessWidget {
  ScaffoldHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List pageList = [
      Home(),
      SettingsView(),
      Chat(),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
            value:
                Provider.of<ThemeProvider>(context, listen: true).theme1.isDark,
            onChanged: (val) {
              Provider.of<ThemeProvider>(context, listen: false)
                  .ThemeSwitch(value: val);
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.settings,
              ),
              label: "settings"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chat_bubble_text,
              ),
              label: "Chat"),
        ],
      ),
      body: PageView(
        children: [
          Home(),
          SettingsView(),
          Chat(),
        ],
      ),
    );
  }
}
