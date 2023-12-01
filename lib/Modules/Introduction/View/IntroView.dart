import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(title: "First Page"),
          PageViewModel(title: "Second Page"),
          PageViewModel(title: "Third Page"),
        ],
        onDone: () {},
        showNextButton: true,
        next: ElevatedButton(
          onPressed: () {},
          child: const Text("Next"),
        ),
      ),
    );
  }
}
