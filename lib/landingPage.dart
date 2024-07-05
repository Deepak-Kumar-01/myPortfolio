import 'package:flutter/material.dart';
import 'package:myportfolio/responsiveScreens/controller.dart';
import 'package:rive/rive.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          // color: Colors.black,
          child: Stack(
            children: [
              // RiveAnimation.asset("assets/cosmos-transparent.riv"),
              ResponsiveHome()
            ],
          ),
        ),
      ),
    );
  }
}
