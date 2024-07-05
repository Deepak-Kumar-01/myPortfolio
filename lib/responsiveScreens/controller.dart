import 'package:flutter/material.dart';
import 'package:myportfolio/responsiveScreens/dimensions.dart';
import 'package:myportfolio/responsiveScreens/mediumDevice/webDeskHome.dart';
class ResponsiveHome extends StatefulWidget {
  const ResponsiveHome({super.key});

  @override
  State<ResponsiveHome> createState() => _ResponsiveHomeState();
}

class _ResponsiveHomeState extends State<ResponsiveHome> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraitns){
        if(constraitns.maxWidth<=smallDeviceWidth){
          //Render Small Device
          return Container(
            height: 100,
            color: Colors.blue,
            child: Text("Small Device"),
          );
        }else {
          //Render Medium Device
          return WebDeskHome();
        }
      },
    );
  }
}
