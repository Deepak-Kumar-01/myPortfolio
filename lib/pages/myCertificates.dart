import 'package:flutter/material.dart';
import 'package:myportfolio/pages/certificationSection.dart';
import 'package:myportfolio/pages/courseSection.dart';
import 'package:myportfolio/pages/internshipSection.dart';

class MyCertificates extends StatefulWidget {
  final String title;
  final int width;
  const MyCertificates({super.key, required this.title, required this.width});

  @override
  State<MyCertificates> createState() => _MyCertificatesState();
}

class _MyCertificatesState extends State<MyCertificates> {
  double _width = 0;
  bool onInternship = true;
  bool onCertification = false;
  bool onCourses = false;
  bool onAboutMe = true;
  bool onResume = false;
  bool onPortfolio = false;
  bool onContact = false;
  bool onCertificates = false;
  void initState() {
    int w = widget.width;
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        w = 110;
        _width = w as double;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 40, top: 20),
            child: Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          AnimatedContainer(
            margin: EdgeInsets.only(left: 40),
            duration: Duration(milliseconds: 500),
            width: _width,
            height: 6,
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Sub Navigation Bar
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 50),
                child: Row(
                  children: [
                    //Internship Section
                    InkWell(
                      onTap: () {
                        setState(() {
                          onInternship = true;
                          onCourses = false;
                          onCertificates = false;
                        });
                      },
                      hoverColor: Color(0xFF222627),
                      hoverDuration: Duration(milliseconds: 200),
                      highlightColor:Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Internship",
                          style: TextStyle(
                              color: onInternship
                                  ? Colors.yellowAccent
                                  : Colors.white54,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //Courses Section
                    InkWell(
                      onTap: () {
                        setState(() {
                          onCourses = true;
                          onInternship = false;
                          onCertificates = false;
                        });
                      },
                      hoverColor: Color(0xFF222627),
                      hoverDuration: Duration(milliseconds: 200),
                      highlightColor:Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Courses",
                          style: TextStyle(
                              color: onCourses
                                  ? Colors.yellowAccent
                                  : Colors.white54,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //Certification Section
                    InkWell(
                      onTap: () {
                        setState(() {
                          onCertificates = true;
                          onInternship = false;
                          onCourses = false;
                        });
                      },
                      hoverColor: Color(0xFF222627),
                      hoverDuration: Duration(milliseconds: 200),
                      highlightColor:Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Certifications",
                          style: TextStyle(
                              color: onCertificates
                                  ? Colors.yellowAccent
                                  : Colors.white54,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              //Content Area
              onInternship
                  ? InternshipSection()
                  : onCourses
                      ? CourseSection()
                      : onCertificates
                          ? CertificationSection()
                          : Text(""),
            ],
          ),
        ],
      ),
    );
  }
}
