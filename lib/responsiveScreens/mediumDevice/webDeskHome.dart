import 'package:flutter/material.dart';
import 'package:myportfolio/responsiveScreens/rightProfileView.dart';

import '../leftProfileView.dart';

class WebDeskHome extends StatefulWidget {
  const WebDeskHome({super.key});

  @override
  State<WebDeskHome> createState() => _WebDeskHomeState();
}

class _WebDeskHomeState extends State<WebDeskHome> {
  bool _showHome=false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        _showHome=true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
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
          AnimatedOpacity(
            opacity: _showHome?1:0,
              curve: Curves.easeInCubic,
              duration: Duration(milliseconds: 500),
              child: LeftProfileView(size: size)
          ),
          //Column 2
          AnimatedOpacity(
              opacity: _showHome?1:0,
              curve: Curves.easeInCubic,
              duration: Duration(milliseconds: 500),
              child: RightProfileView())
        ],
      ),
    );
  }
}


