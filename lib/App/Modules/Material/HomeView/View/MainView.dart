import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Provider/BottomNavigationProvider/NavigatinProvider.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Provider/PlatformProvider/HomeProivder.dart';
import 'package:platform_convertar/Compnents/MaterialViews/chatView/chat.dart';
import 'package:platform_convertar/Compnents/MaterialViews/homeView/home.dart';
import 'package:platform_convertar/Compnents/MaterialViews/settingView/settings.dart';
import 'package:provider/provider.dart';

import '../../../UTILS/theme/Proivder/ThemeProvider.dart';

class ScaffoldHomeView extends StatelessWidget {
  const ScaffoldHomeView({super.key});

  @override
  Widget build(BuildContext context) {
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
        currentIndex: Provider.of<NavigationProvider>(context, listen: true)
            .navigationModel
            .selectedIndex,
        onTap: (value) {
          Provider.of<NavigationProvider>(context, listen: false)
              .changePlatform(value: value);
        },
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
