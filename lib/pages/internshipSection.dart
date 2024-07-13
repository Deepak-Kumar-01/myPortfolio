import 'package:flutter/material.dart';
import 'package:myportfolio/pages/internshipCard.dart';
import 'package:myportfolio/pages/projectCard.dart';

import 'certificateCard.dart';

class InternshipSection extends StatefulWidget {
  const InternshipSection({super.key});

  @override
  State<InternshipSection> createState() => _InternshipSectionState();
}

class _InternshipSectionState extends State<InternshipSection> {
  bool isVisible=false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        isVisible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return  AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: isVisible ? 1 : 0,
      curve: Curves.easeIn,
      child: Container(
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        margin: EdgeInsets.only(top: 30,bottom: 40,left: 0),
        child: const Column(
          children: [
            //ROW 1:
            InternshipCard(),
            //Gap
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
