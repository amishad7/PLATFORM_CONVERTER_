import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Provider/BottomNavigationProvider/NavigatinProvider.dart';
import 'package:platform_convertar/App/Modules/Material/HomeView/Provider/PlatformProvider/HomeProivder.dart';
import 'package:provider/provider.dart';

import 'App/Modules/Cupertino/View/HomeView.dart';
import 'App/Modules/Material/HomeView/View/MainView.dart';
import 'App/Modules/UTILS/global/global.dart';
import 'App/Modules/UTILS/theme/Proivder/ThemeProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
        ListenableProvider<PlatformProvider>(
          create: (context) => PlatformProvider(),
        ),
        ListenableProvider<NavigationProvider>(
          create: (context) => NavigationProvider(),
        ),
      ],
      builder: (context, _) =>
          (Provider.of<PlatformProvider>(context, listen: true).p1.isIos)
              ? const CupertinoApp(
                  home: HomeView_(),
                  debugShowCheckedModeBanner: false,
                  theme: CupertinoThemeData(brightness: Brightness.dark),
                )
              : MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: Global.lightTheme,
                  darkTheme: Global.darkTheme,
                  themeMode: (Provider.of<ThemeProvider>(context, listen: true)
                          .theme1
                          .isDark)
                      ? ThemeMode.dark
                      : ThemeMode.light,
                  home: const ScaffoldHomeView(),
                ),
    ),
  );
}
