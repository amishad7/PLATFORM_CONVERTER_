import 'package:flutter/material.dart';
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
      body: const Center(
        child: CircleAvatar(
          radius: 150,
        ),
      ),
    );
  }
}
