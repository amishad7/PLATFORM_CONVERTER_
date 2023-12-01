import 'package:flutter/cupertino.dart';

class HomeView_ extends StatelessWidget {
  const HomeView_({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
          child: CupertinoButton.filled(
        child: const Text("Cupertino"),
        onPressed: () {},
      )),
    );
  }
}
