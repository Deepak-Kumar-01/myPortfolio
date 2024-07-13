import 'package:flutter/material.dart';
import 'package:myportfolio/buttons/navigationButton.dart';
import 'package:myportfolio/pages/aboutme.dart';
import 'package:myportfolio/pages/myCertificates.dart';
import 'package:myportfolio/pages/contactme.dart';
import 'package:myportfolio/pages/portfolio.dart';
import 'package:myportfolio/pages/resume.dart';

class RightProfileView extends StatefulWidget {
  const RightProfileView({super.key});

  @override
  State<RightProfileView> createState() => _RightProfileViewState();
}

class _RightProfileViewState extends State<RightProfileView> {
  bool onAboutMe = true;
  bool onResume = false;
  bool onPortfolio = false;
  bool onContact = false;
  bool onCertificates=false;
  bool showRightView=false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        showRightView=true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      opacity: showRightView?1:0,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: const Color(0xFF1C1F20),
        child: SizedBox(
          width: size.width * 0.7,
          height: size.height * 0.9,
          child: Stack(
            children: [
              //Content Area
              // MyCertificates(title: "Certificates", width: 0),
              // AboutMe(title: "About Me",width: 0,),
              onAboutMe
                  ? AboutMe(title: "About Me",width: 0,)
                  : onResume
                  ? Resume(title: "Resume",width: 0,)
                  : onPortfolio
                  ? Portfolio(title: "Portfolio",width: 0,)
                  : onCertificates
                  ? MyCertificates(title: "Cerificates",width: 0,)
                  : Text(""),
              Positioned(
                right: 0,
                child: Container(
                  width: 500,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30.0),
                        topRight: Radius.circular(20)
                      ),

                  ),
                  //Navigation Bar
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        //About me
                        InkWell(
                          onTap: () {
                            setState(() {
                              onAboutMe = true;
                              onResume = false;
                              onPortfolio = false;
                              onContact = false;
                              onCertificates=false;

                            });
                          },
                          hoverColor: Colors.black12,
                          hoverDuration: Duration(milliseconds: 200),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "About Me",
                              style: TextStyle(
                                  color: onAboutMe
                                      ? Colors.white
                                      : Colors.white54,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //Resume
                        InkWell(
                          onTap: () {
                            setState(() {
                              onAboutMe = false;
                              onResume = true;
                              onPortfolio = false;
                              onContact = false;
                              onCertificates=false;

                            });
                          },
                          hoverColor: Colors.black12,
                          hoverDuration: Duration(milliseconds: 200),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Resume",
                              style: TextStyle(
                                  color: onResume
                                      ? Colors.white
                                      : Colors.white54,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //Portfolio
                        InkWell(
                          onTap: () {
                            setState(() {
                              onAboutMe = false;
                              onResume = false;
                              onPortfolio = true;
                              onContact = false;
                              onCertificates=false;

                            });
                          },
                          hoverColor: Colors.black12,
                          hoverDuration: Duration(milliseconds: 200),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Portfolio",
                              style: TextStyle(
                                  color: onPortfolio
                                      ? Colors.white
                                      : Colors.white54,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        //Certificates
                        InkWell(
                          onTap: () {
                            setState(() {
                              onAboutMe = false;
                              onResume = false;
                              onPortfolio = false;
                              onContact = false;
                              onCertificates=true;
                            });
                          },
                          hoverColor: Colors.black12,
                          hoverDuration: Duration(milliseconds: 200),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Certificates",
                              style: TextStyle(
                                  color: onCertificates
                                      ? Colors.white
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
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
