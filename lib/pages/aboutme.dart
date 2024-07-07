import 'package:flutter/material.dart';
import 'package:myportfolio/pages/content.dart';
import 'package:myportfolio/pages/developmentStackCard.dart';

class AboutMe extends StatefulWidget {
  final String title;
  final int width;
  const AboutMe({super.key, required this.title, required this.width});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  double _width = 0;

  @override
  void initState() {
    super.initState();
    int w = widget.width;
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        w = 110;
        _width = w.toDouble();
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
                  fontSize: 35,
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
          // Intro
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 60),
              child: const Text(
                about_me,
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
          ),
          // In Progress Title
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.only(left: 20, top: 0),
              child: const Text(
                "In Progress",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          //Progress Card
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              width: size.width*0.7,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.20,
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.all(8),
                          color:  const Color(0xFF222627),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Image.asset("assets/phone.png",color: Colors.white,),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Mobile Apps",
                                        style: TextStyle(
                                            color: Color(0xFFFFEE58),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: const Text(
                                            "Professional development of applications for iOS and Android",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                            maxLines: 5,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.20,
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.all(8),
                          color:  const Color(0xFF222627),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Image.asset("assets/dev.png",color: Colors.white,width: 55,),
                                const SizedBox(width: 20),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Web Development",
                                        style: TextStyle(
                                            color: Color(0xFFFFEE58),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "High-quality development of sites at the professional level",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.20,
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.all(8),
                          color:  const Color(0xFF222627),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Image.asset("assets/ux.png",color: Colors.white,width: 55,),
                                const SizedBox(width: 20),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "UI/UX",
                                        style: TextStyle(
                                            color: Color(0xFFFFEE58),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Creating professional design templates for both web and mobile.",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        height: size.height * 0.20,
                        child: Card(
                          elevation: 8,
                          margin: const EdgeInsets.all(8),
                          color:  const Color(0xFF222627),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              children: [
                                Image.asset("assets/aws.png",width: 55,),
                                const SizedBox(width: 20),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Amazon Web Services",
                                        style: TextStyle(
                                            color: Color(0xFFFFEE58),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "I am expanding my skill set by learning AWS, focusing on cloud services and infrastructure. ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                          maxLines: 5,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
          // _buildHorizontalCardList(size, [
          //   _buildCard(
          //       size,
          //       "assets/flutterLogo.png",
          //       "assets/firebase.png",
          //       "assets/dartlogo.png",
          //       "Full Stack App Development",
          //       mobileDevCardContent,
          //       Color(0xFF222627),
          //       Color(0xFFFFEE58),
          //       Colors.white),
          //   _buildCard(
          //       size,
          //       "assets/flutterLogo.png",
          //       null,
          //       null,
          //       "Web Development",
          //       aboutWebDevCard,
          //       Color(0xFF222627),
          //       Color(0xFFFFEE58),
          //       Colors.white),
          //   // _buildCard(size, "assets/flutterLogo2.png", "Mobile App Development", mobileDevCardContent, Colors.white, Colors.blue[900]!, Colors.black45),
          // ]),
          // _buildHorizontalCardList(size, [
          //   _buildCard(size, "assets/flutterLogo.png", "Mobile App Development", mobileDevCardContent, Colors.green[700]!, Colors.yellowAccent, Colors.white),
          // ]),
          // _buildHorizontalCardList(size, [
          //   _buildCard(size, "assets/flutterLogo2.png", "Mobile App Development", mobileDevCardContent, Colors.white, Colors.blue[900]!, Colors.black45),
          //   _buildCard(size, "assets/flutterLogo.png", "Mobile App Development", mobileDevCardContent, Colors.blue[700]!, Colors.yellowAccent, Colors.white),
          // ]),
        ],
      ),
    );
  }

  Widget _buildHorizontalCardList(Size size, List<Widget> cards) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: size.width * 0.7,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: cards,
        ),
      ),
    );
  }

  Widget _buildCard(
      Size size,
      String? imagePath1,
      String? imagePath2,
      String? imagePath3,
      String title,
      String content,
      Color cardColor,
      Color titleColor,
      Color contentColor) {
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.25,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(8),
        color: cardColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              imagePath2 != null
                  ? Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              imagePath2,
                              width: 70,
                              height: 45,
                            ),
                            Image.asset(
                              imagePath3!,
                              width: 48,
                            ),
                          ],
                        ),
                        Image.asset(
                          imagePath1!,
                          width:94,
                          height: 40,
                        ),
                      ],
                    )
                  : Image.asset(
                      imagePath1!,
                      width: 100,
                      height: 100,
                    ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: titleColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          content,
                          style: TextStyle(
                            color: contentColor,
                            fontSize: 14,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
