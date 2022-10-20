import 'package:flutter/material.dart';
import 'package:travel/screens/onboarding.dart';

void main() {
  runApp(const Travel());
}

class Travel extends StatelessWidget {
  const Travel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
