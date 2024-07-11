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
    Future.delayed(const Duration(milliseconds: 800), () {
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
        // color: Colors.blue,
        margin: EdgeInsets.only(top: 30,bottom: 40),
        // width: size.width*0.4,
        child: const Column(
          children: [
            //ROW 1:
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //First Card
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20),
                  //   child: CertificateCard(
                  //     companyName: "Innvocon",
                  //     projectName: "Personal Branding Website.",
                  //     imageOfCompany: "assets/poster1.png",
                  //     companyWebsiteUrl: "https://www.innvocon.co.in/",
                  //   ),
                  // ),
                  InternshipCard(),
                ],
              ),
            ),
            //Gap
            SizedBox(
              height: 30,
            ),
            //ROW 2 :

          ],
        ),
      ),
    );
  }
}
