import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.sizeOf(context).height;
    double w = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Center(
              child: Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 45,
                ),
              ),
            ),
            SizedBox(height: 45),
            Container(
              height: h / 18,
              width: w / 1.1,
              decoration: BoxDecoration(
                color: Colors.red.shade900.withOpacity(0.4),
                borderRadius: BorderRadius.circular(23),
                boxShadow: const [
                  // BoxShadow(
                  //   color: Colors.grey.shade50,
                  //   blurRadius: 34,
                  //   spreadRadius: 1,
                  // ),
                ],
              ),
            ),
            SizedBox(height: h / 30),
            Container(
              height: h / 6,
              width: w / 1.1,
              decoration: BoxDecoration(
                color: Colors.red.shade900.withOpacity(0.4),
                borderRadius: BorderRadius.circular(23),
                boxShadow: const [
                  // BoxShadow(
                  //   color: Colors.grey.shade50,
                  //   blurRadius: 34,
                  //   spreadRadius: 1,
                  // ),
                ],
              ),
            ),
            SizedBox(height: h / 30),
            Container(
              height: h / 3,
              width: w / 1.1,
              decoration: BoxDecoration(
                color: Colors.red.shade900.withOpacity(0.4),
                borderRadius: BorderRadius.circular(23),
                boxShadow: const [
                  // BoxShadow(
                  //   color: Colors.grey.shade50,
                  //   blurRadius: 34,
                  //   spreadRadius: 1,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
