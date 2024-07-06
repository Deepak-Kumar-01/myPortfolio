import 'package:flutter/material.dart';
import 'package:myportfolio/buttons/navigationButton.dart';
import 'package:myportfolio/pages/aboutme.dart';
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: const Color(0xFF1C1F20),
      child: Container(
        width: size.width * 0.7,
        height: size.height * 0.9,
        child: Stack(
          children: [
            //Content Area
            onAboutMe
                ? AboutMe(title: "About Me",width: 0,)
                : onResume
                ? Resume(title: "Resume",width: 0,)
                : onPortfolio
                ? Portfolio(title: "Portfolio",width: 0,)
                : onContact
                ? ContactMe(title: "Contact Me",width: 0,)
                : Text(""),
            Positioned(
              right: 0,
              child: Container(
                width: 500,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                      topRight: Radius.circular(20)
                    ),

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            onAboutMe = true;
                            onResume = false;
                            onPortfolio = false;
                            onContact = false;
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            onAboutMe = false;
                            onResume = true;
                            onPortfolio = false;
                            onContact = false;
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
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            onAboutMe = false;
                            onResume = false;
                            onPortfolio = true;
                            onContact = false;
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
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            onAboutMe = false;
                            onResume = false;
                            onPortfolio = false;
                            onContact = true;
                          });
                        },
                        hoverColor: Colors.black12,
                        hoverDuration: Duration(milliseconds: 200),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            "Contact me",
                            style: TextStyle(
                                color: onContact
                                    ? Colors.white
                                    : Colors.white54,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
