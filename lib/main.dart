import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Modules/App/Cupertino/View/HomeView.dart';
import 'Modules/App/Material/View/MainView.dart';
import 'Modules/UTILS/PlatformProvider/Provider/PlatformProvider/HomeProivder.dart';
import 'Modules/UTILS/global/global.dart';
import 'Modules/UTILS/theme/Proivder/ThemeProvider.dart';

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
        // ListenableProvider<NavigationProvider>(
        //   create: (context) => NavigationProvider(),
        // ),
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
                  home: ScaffoldHomeView(),
                ),
    ),
  );
}
