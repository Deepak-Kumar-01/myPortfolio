import 'package:flutter/material.dart';
import 'package:myportfolio/responsiveScreens/rightProfileView.dart';

import '../leftProfileView.dart';

class WebDeskHome extends StatefulWidget {
  const WebDeskHome({super.key});

  @override
  State<WebDeskHome> createState() => _WebDeskHomeState();
}

class _WebDeskHomeState extends State<WebDeskHome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.black87,
      // color: Colors.white,
      // color: Colors.transparent,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xFF000000),
          Color(0xFF2D3436),
          // Color(0xFF211F2C),
        ],
      )),
      height: size.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Column 1
          LeftProfileView(size: size),
          //Column 2
          RightProfileView()
        ],
      ),
    );
  }
}


