import 'package:flutter/material.dart';
import 'package:platform_convertar/Modules/Material/HomeView/View/HomeView.dart';
import 'package:platform_convertar/Modules/UTILS/theme/Proivder/ThemeProvider.dart';
import 'package:provider/provider.dart';

import 'Modules/UTILS/global/global.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<ThemeProvider>(
          create: (context) => ThemeProvider(),
        ),
      ],
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Global.lightTheme,
        darkTheme: Global.darkTheme,
        themeMode:
            (Provider.of<ThemeProvider>(context, listen: true).theme1.isDark)
                ? ThemeMode.dark
                : ThemeMode.light,
        home: const ScaffoldHomeView(),
      ),
    ),
  );
}
