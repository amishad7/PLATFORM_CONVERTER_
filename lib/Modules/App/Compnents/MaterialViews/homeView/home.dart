import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../UTILS/PlatformProvider/Provider/PlatformProvider/HomeProivder.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 45,
              ),
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Provider.of<PlatformProvider>(context, listen: false)
                    .changePlatform();
              },
              child: const Text("Cupertino"),
            ),
          ),
        ],
      ),
    );
  }
}
