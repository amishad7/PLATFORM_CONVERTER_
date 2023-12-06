import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../App/Modules/Material/HomeView/Provider/PlatformProvider/HomeProivder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Provider.of<PlatformProvider>(context, listen: false)
                .changePlatform();
          },
          child: const Text("Cupertino"),
        ),
      ),
    );
  }
}
