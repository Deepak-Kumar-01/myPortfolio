import 'package:flutter/material.dart';
import 'package:myportfolio/pages/certificateCard.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'content.dart';

class InternshipCard extends StatefulWidget {
  const InternshipCard({super.key});

  @override
  State<InternshipCard> createState() => _InternshipCardState();
}

class _InternshipCardState extends State<InternshipCard> {
  bool _isHovered = false;
  bool showInternshipCard = false;
  bool showCertificate = false;
  double slideLR = 0;
  bool showMongodb = false;
  double slideMongo = 0;
  bool showExpress = false;
  double slideExpress = 0;
  bool showReact = false;
  double slideReact = 0;
  bool showNode = false;
  double slideNode = 0;

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print("can't launch url");
    }
  }

  @override
  void initState() {
    super.initState();
    //show Internship card
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        showInternshipCard = true;
      });
    });
    //show line before mongodb
    Future.delayed(Duration(milliseconds: 900), () {
      setState(() {
        slideMongo = 35;
      });
    });
    //show mongodb icon
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {
        showMongodb = true;
      });
    });
    //show line before express
    Future.delayed(Duration(milliseconds: 1100), () {
      setState(() {
        slideExpress = 35;
      });
    });
    //show express icon
    Future.delayed(Duration(milliseconds: 1200), () {
      setState(() {
        showExpress = true;
      });
    });
    //show line before react
    Future.delayed(Duration(milliseconds: 1300), () {
      setState(() {
        slideReact = 35;
      });
    });
    //show react icon
    Future.delayed(Duration(milliseconds: 1400), () {
      setState(() {
        showReact = true;
      });
    });
    //show line before node
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        slideNode = 35;
      });
    });
    //show node icon
    Future.delayed(Duration(milliseconds: 1600), () {
      setState(() {
        showNode = true;
      });
    });
    // Last line
    Future.delayed(Duration(milliseconds: 1700), () {
      setState(() {
        slideLR = 20;
      });
    });
    //Show Certificate
    Future.delayed(Duration(milliseconds: 2000), () {
      setState(() {
        showCertificate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      //Line animation + certificate card
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
            children: [
          //Line Animation
          SizedBox(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Slide Line 1 mongo
                AnimatedContainer(
                  margin: EdgeInsets.only(left: 406),
                  height: 5,
                  width: slideMongo,
                  duration: const Duration(milliseconds: 500),
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
                AnimatedOpacity(
                  duration: Duration(milliseconds: 500),
                  opacity: showMongodb ? 1 : 0,
                  child: Image.asset(
                    "assets/mongodb.png",
                    color: Colors.green,
                    width: 40,
                  ),
                ),
                //Slide Line 2 express
                AnimatedContainer(
                  margin: EdgeInsets.only(left: 0),
                  height: 5,
                  width: slideExpress,
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
                AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: showExpress ? 1 : 0,
                    child: Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey[700],
                            borderRadius: BorderRadius.circular(30)),
                        child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "ex",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            )))),
                //Slide Line 3 react
                AnimatedContainer(
                  margin: const EdgeInsets.only(left: 0),
                  height: 5,
                  width: slideReact,
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
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: showReact ? 1 : 0,
                  child: Image.asset(
                    "assets/react.png",
                    color: Colors.white,
                    width: 45,
                  ),
                ),
                //Slide Line 4 node
                AnimatedContainer(
                  margin: const EdgeInsets.only(left: 0),
                  height: 5,
                  width: slideNode,
                  duration: const Duration(milliseconds: 500),
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
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: showNode ? 1 : 0,
                  child: Image.asset(
                    "assets/node.png",
                    color: Colors.white,
                    width: 48,
                  ),
                ),
                // Last Slide Line
                AnimatedContainer(
                  margin: const EdgeInsets.only(left: 0),
                  height: 5,
                  width: slideLR,
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
          //Internship Card + Certificate card
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Internship Card
              SizedBox(
                width: 400,
                height: 400,
                child: AnimatedOpacity(
                  opacity: showInternshipCard ? 1 : 0,
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.easeIn,
                  child: Card(
                    elevation: 8,
                    color: const Color(0xFF222627),
                    child: Column(
                      children: [
                        //Logo+Title+Company+Duration
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              //Logo
                              Container(
                                  width: 120,
                                  height: 80,
                                  // color: Colors.yellowAccent,
                                  child: Image.asset(
                                    "assets/innvoconLogo.png",
                                  )),
                              const SizedBox(
                                width: 15,
                              ),
                              //Internship Name
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Full Stack MERN Intern",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  //Company Name
                                  Text(
                                    "Innvocon",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    "June 2020- Nov 2021",
                                    style: TextStyle(
                                      color: Colors.white54,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        //Brief
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25, top: 20, bottom: 10),
                          child: Container(
                            child: const Text(
                              innvoconInternContent,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              maxLines: 10,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        //Skills
                        const Padding(
                          padding: EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Text(
                                "Skills: ",
                                style: TextStyle(
                                    color: Colors.lightBlueAccent, fontSize: 16),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "• React • Express • MongoDB • Node.js",
                                style: TextStyle(
                                    color: Colors.greenAccent, fontSize: 14),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //Certificate Card
              AnimatedOpacity(
                curve:Curves.easeIn,
                  opacity: showCertificate ? 1 : 0,
                  duration: const Duration(milliseconds: 600),
                  child: const CertificateCard(
                      companyWebsiteUrl: "https://drive.google.com/file/d/1dWfo1xH8cAIYn95rGZYY7LR7_coOrN2o/view?usp=sharing",
                      imageOfCompany: "assets/InnvoconCertificate.jpg",
                      companyName: "Innvocon",
                      projectName: "projectName"))
            ]),
          ),
        ]),
      ),
    );
  }
}
