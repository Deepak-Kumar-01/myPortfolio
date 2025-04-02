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
  double _eduLine3 = 0;
  double _internLine2=0;
  bool skillCard=false;


  @override
  void initState() {
    int w = widget.width;
    super.initState();
    //Resume Underline Delay
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        w = 100;
        _width = w as double;
      });
    });
    //First Line
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _eduLine1 = 13 as double;
      });
    });
    //eduContent 1/ internContent 1
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        showeduLine1=true;
      });
    });
    //Second Line
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        _eduLine2 = 92;
      });
    });
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        showeduLine2=true;
      });
    });
    //Third Line
    Future.delayed(Duration(milliseconds: 1100), () {
      setState(() {
        _eduLine3 = 68;
      });
    });
    //eduContent 2
    Future.delayed(Duration(milliseconds: 1050), () {
      setState(() {
        showeduLine2=true;
      });
    });
    //Internship Block
    //Internal line 1
    Future.delayed(Duration(milliseconds: 1300), () {
      setState(() {
        _internLine1=12 ;
      });
    });
    //show internLine1
    Future.delayed(Duration(milliseconds: 1400), () {
      setState(() {
        showinternLine1=true;
      });
    });
    //Intern Line 2
    Future.delayed(Duration(milliseconds: 1300), () {
      setState(() {
        _internLine2=98;
      });
    });
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        skillCard=true;
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
          // //Resume Tile + Underline
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
            padding: const EdgeInsets.only(left: 30, top: 20, bottom: 0),
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
                const SizedBox(
                  width: 20,
                ),
                //Education Title
                Container(
                  child:  Text(
                    "Education",
                    style: TextStyle(
                        color: Colors.pink,
                        // color: Color(0xFF4B94F4),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //Left Line Animation + Right Side Content
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
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors:
                            _eduLine1==13?[Color(0xFFFFEE58),Color(0xFFD2A813)]:[const Color(0xFF1C1F20),const Color(0xFF1C1F20)]
                          ),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      //Animated Line 2
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _eduLine2,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors:
                                _eduLine2==92?[Color(0xFFFFEE58),Color(0xFFD2A813)]:[const Color(0xFF1C1F20),const Color(0xFF1C1F20)]
                            ),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      //Animation Line 3
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _eduLine3,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
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
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: showeduLine1?1:0,
                        child: const ResumeDetails(
                          title: "JSS Academy of Technical Education [PG]",
                          session: "2023-2025",
                          description: pgContent,
                          sgpa: "7.7",
                          status: "Ongoing",
                          cgpa: "Pending",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width * 0.4,
                      // color: Colors.green,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: showeduLine2?1:0,
                        child: const ResumeDetails(
                          title: "DIT University, Dehradun [UG]",
                          session: "2018-2021",
                          description: ugContent,
                          cgpa: "7.79",
                          sgpa: "",
                          status: "Complete",
                        ),
                      ),
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
          //INTERNSHIP SECTION
          //Internship Card + Title
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 0, bottom: 0),
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
                  child: Text(
                    "Internship",
                    style: TextStyle(
                        color: Colors.pink,
                        // color: Color(0xFF4B94F4),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //Internship content
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //left Line ANIMATION
                SizedBox(
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
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors:
                                _internLine1==12?[Color(0xFFFFEE58),Color(0xFFD2A813)]:[const Color(0xFF1C1F20),const Color(0xFF1C1F20)]
                            ),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      // //Animated LLine 2
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _internLine2,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          // color: Colors.white54,
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                //Right Side Content
                //RESUME
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Internship 1
                    SizedBox(
                      width: size.width * 0.4,
                      // color: Colors.yellowAccent,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: showinternLine1?1:0,
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
                    ),
                  ],
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
                SizedBox(
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
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //Yellow Dot
                      AnimatedContainer(
                        width: 15,
                        height: 15,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors:
                                _internLine1==12?[Color(0xFFFFEE58),Color(0xFFD2A813)]:[const Color(0xFF1C1F20),const Color(0xFF1C1F20)]
                            ),
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      // //Animated LLine 2
                      AnimatedContainer(
                        margin: EdgeInsets.only(left: 0, top: 0),
                        width: 2,
                        height: _internLine2,
                        duration: Duration(milliseconds: 500),
                        decoration: BoxDecoration(
                          // color: Colors.white54,
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFD3D3D3),
                              Color(0xFF2D3436),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                //Right Side Content
                //RESUME
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Internship 1
                    SizedBox(
                      width: size.width * 0.5,
                      // color: Colors.yellowAccent,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 300),
                        opacity: showinternLine1?1:0,
                        child: const InternshipDetails(
                          companyName: "Half Life To Health",
                          projectName: "Mobile App Developer",
                          session: "2024-Present",
                          description: internshipContent2,
                          imagePath1: "",
                          imagePath2: "",
                          imagePath3: "",
                          imagePath4: "",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // //Skills Card + Tile
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 0, bottom: 0),
            child: Row(
              children: [
                // Skills Image Card
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
                          "assets/skills.png",
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
                  child:  Text(
                    "Skills",
                    style: TextStyle(
                        color: Colors.pink,
                        // color: Color(0xFF4B94F4),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          //Skill-Tech Cards
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: skillCard?1:0,
            curve: Curves.easeIn,
            child: Container(
              // color: Colors.blue,
              margin: EdgeInsets.only(top: 20),
              width: size.width*0.7,
              child: Column(
                children: [
                  //ROW 1:
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Dart
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/dartlogo.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Dart",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Flutter
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/flutter.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Flutter",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Firebase
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/firebase.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Firebase",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Figma
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/figma.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Figma",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //AWS
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/aws.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "AWS",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //ROW 2
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //HTML
                      SizedBox(
                        width: size.width * 0.09,
                        height: size.height * 0.18,
                        child: Card(
                          elevation: 8,
                          color:  const Color(0xFF222627),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/html.png",width: 70,),
                                const SizedBox(height: 10),
                                const Text(
                                  "HTML",
                                  style: TextStyle(
                                    // color: Color(0xFFFFEE58),
                                      color: Color(0xFFD6EFD8),
                                      // color: Colors.redAccent,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                        //CSS
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/css.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "CSS",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Javascript
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/javaScript.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Javascript",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //Java
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/java.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "Java",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //DSA
                        SizedBox(
                          width: size.width * 0.09,
                          height: size.height * 0.18,
                          child: Card(
                            elevation: 8,
                            color:  const Color(0xFF222627),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset("assets/algo.png",width: 70,),
                                  const SizedBox(height: 10),
                                  const Text(
                                    "DSA",
                                    style: TextStyle(
                                      // color: Color(0xFFFFEE58),
                                        color: Color(0xFFD6EFD8),
                                        // color: Colors.redAccent,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
            
                    ],
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
