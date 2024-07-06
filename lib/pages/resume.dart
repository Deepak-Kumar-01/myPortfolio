import 'package:flutter/material.dart';
import 'package:myportfolio/pages/content.dart';
import 'package:myportfolio/pages/internshipDetails.dart';
import 'package:myportfolio/pages/resumeDetails.dart';

class Resume extends StatefulWidget {
  final String title;
  final int width;
  const Resume({super.key, required this.title, required this.width});

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  double _width = 0;
  double _eduLine1 = 0;
  bool showeduLine1=false;
  double _internLine1=0;
  bool showinternLine1=false;
  double _eduLine2 = 0;
  bool showeduLine2=false;
  double _internLine2=0;
  double _eduLine3 = 0;
  @override
  void initState() {
    print("Resume Widget is called");
    int w = widget.width;
    super.initState();
    //Resume Underline Delay
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        w = 100;
        _width = w as double;
      });
    });
    //First Section
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _eduLine1 = 13 as double;
        _internLine1=14 as double;
        showeduLine1=true;
      });
    });
    //Second Section
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _eduLine2 = 100;
        showeduLine2=true;
        _internLine2=150;
        showinternLine1=true;
      });
    });
    //Third Section
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _eduLine3 = 120;

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
            margin: EdgeInsets.only(left: 40, top: 20),
            child: Text(
              widget.title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
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
          //-----Resume Tile + Underline------
          //Icon1(Education + Title)
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30, bottom: 0),
            child: Row(
              children: [
                // Education Card
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    // color: Color(0xB35F4EF4),
                    // color: Color(0xFF005175),
                    // color: Color(0xFF0E3F80),
                    // color: Colors.blue[900],
                    color: Color(0xFF222627),
                    // color: Colors.redAccent,
                    child: Center(
                        child: Image.asset(
                      "assets/education.png",
                      width: 30,
                      color: Colors.white,
                    )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                //Education Title
                Container(
                  child: const Text(
                    "Education",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //left Line ANIMATION
                Container(
                  // color: Colors.blue,
                  width: size.width * 0.04,
                  child: Column(
                    children: [
                      //Animated Line 1
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _eduLine1,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: _eduLine1 == 13
                                ? Colors.yellowAccent
                                : const Color(0xFF1C1F20),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      //Animated LLine 2
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _eduLine2,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: _eduLine2 == 100
                                ? Colors.yellowAccent
                                : const Color(0xFF1C1F20),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      //Animated Line 3
                      // AnimatedContainer(
                      //   margin: EdgeInsets.only(left: 0, top: 0),
                      //   width: 2,
                      //   height: _eduLine3,
                      //   duration: Duration(milliseconds: 500),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white54,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      // ),
                      // //Yellow Dot
                      // AnimatedContainer(
                      //   width: 15,
                      //   height: 15,
                      //   duration: Duration(milliseconds: 500),
                      //   decoration: BoxDecoration(
                      //       color:_eduLine3==240?Colors.yellowAccent:const Color(0xFF1C1F20),
                      //       borderRadius: BorderRadius.circular(30)
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //Right Side Content
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.4,
                      // color: Colors.yellowAccent,
                      child: showeduLine1?AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        child: const ResumeDetails(
                          title: "JSS Academy of Technical Education [PG]",
                          session: "2023-2025",
                          description: pgContent,
                          sgpa: "7.83",
                          status: "Ongoing",
                          cgpa: "Pending",
                        ),
                      ):Text(""),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      // color: Colors.green,
                      child: showeduLine2?AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        child: const ResumeDetails(
                          title: "DIT University, Dehradun [UG]",
                          session: "2018-2021",
                          description: ugContent,
                          cgpa: "7.79",
                          sgpa: "",
                          status: "Complete",
                        ),
                      ):Text(""),
                    ),
                    // Container(
                    //   height: size.height*0.2,
                    //   width: size.width*0.4,
                    //   color: Colors.yellowAccent,
                    // ),
                  ],
                )
              ],
            ),
          ),
          //----------Education Done------------
          //Internship and Experience
          const SizedBox(
            height: 30,
          ),
          //INTERNSHIP SECTION
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 30, bottom: 0),
            child: Row(
              children: [
                // Internship Image Card
                SizedBox(
                  width: 60,
                  height: 60,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Color(0xFF222627),
                    child: Center(
                        child: Image.asset(
                      "assets/internship.png",
                      width: 30,
                      color: Colors.white,
                    )),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //Internship  Title
                Container(
                  child: const Text(
                    "Internship",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //Internship data
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //left Line ANIMATION
                Container(
                  // color: Colors.blue,
                  width: size.width * 0.04,
                  child: Column(
                    children: [
                      //Animated Line 1
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _internLine1,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            color: _internLine1 == 14
                                ? Colors.yellowAccent
                                : const Color(0xFF1C1F20),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      // //Animated LLine 2
                      // AnimatedContainer(
                      //   margin: EdgeInsets.only(left: 0, top: 0),
                      //   width: 2,
                      //   height: _internLine2,
                      //   duration: Duration(milliseconds: 500),
                      //   decoration: BoxDecoration(
                      //     color: Colors.white54,
                      //     borderRadius: BorderRadius.circular(10),
                      //   ),
                      // ),
                      // //Yellow Dot
                      // AnimatedContainer(
                      //   width: 15,
                      //   height: 15,
                      //   duration: Duration(milliseconds: 500),
                      //   decoration: BoxDecoration(
                      //       color: _internLine2 == 150
                      //           ? Colors.yellowAccent
                      //           : const Color(0xFF1C1F20),
                      //       borderRadius: BorderRadius.circular(30)),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                //Right Side Content
                //RESUME
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Internship 1
                    SizedBox(
                      width: size.width * 0.4,
                      // color: Colors.yellowAccent,
                      child: const InternshipDetails(
                        companyName: "Zaivic Tech Wellness Private Limited.",
                        projectName: "Personal Branding Website",
                        session: "2019-2020",
                        description: internshipContent1,
                        imagePath1: "",
                        imagePath2: "",
                        imagePath3: "",
                        imagePath4: "",
                      ),
                    ),
                    //space
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
