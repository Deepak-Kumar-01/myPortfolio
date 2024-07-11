import 'package:flutter/material.dart';

class CertificationSection extends StatefulWidget {
  const CertificationSection({super.key});

  @override
  State<CertificationSection> createState() => _CertificationSectionState();
}

class _CertificationSectionState extends State<CertificationSection> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.2),
        decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.all(30),
        child: const Text(
          "I'll get one when the course is completed.",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
