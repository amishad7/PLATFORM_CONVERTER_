import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../Material/HomeView/Provider/PlatformProvider/HomeProivder.dart';

class HomeView_ extends StatelessWidget {
  const HomeView_({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton.filled(
          child: const Text("Scaffold"),
          onPressed: () {
            Provider.of<PlatformProvider>(context, listen: false)
                .changePlatform();
          },
        ),
      ),
    );
  }
}
