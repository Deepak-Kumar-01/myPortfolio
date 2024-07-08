import 'package:flutter/material.dart';
import 'package:myportfolio/pages/projectCard.dart';

class Portfolio extends StatefulWidget {
  final String title;
  final int width;
  const Portfolio({super.key, required this.title, required this.width});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  double _width = 0;
  bool projectCards = false;
  void initState() {
    int w = widget.width;
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        w = 90;
        _width = w as double;
      });
    });
    Future.delayed(Duration(milliseconds: 800), () {
      setState(() {
        projectCards = true;
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
          //Title and Underline animation
          Container(
            margin: EdgeInsets.only(left: 40, top: 20),
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
          //My Projects
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: projectCards ? 1 : 0,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //First Card
                        ProjectCard(
                          title: "Mobile App",
                          subTitle: "Full Stack native mobile application.",
                          imagePath: "assets/poster1.png",
                          url: "https://github.com/Deepak-Kumar-01",
                        ),
                        //Second Card
                        ProjectCard(
                          title: "Porfolio",
                          subTitle: "Place where you FLEX.",
                          imagePath: "assets/poster1.jpg",
                          url: "https://github.com/Deepak-Kumar-01",
                        ),
                        //Third Card
                        ProjectCard(
                          title: "Play Word",
                          subTitle: "A Puzzle Game.",
                          imagePath: "assets/poster2.jpg",
                          url: "https://github.com/Deepak-Kumar-01",
                        ),
                      ],
                    ),
                  ),
                  //Gap
                  SizedBox(
                    height: 30,
                  ),
                  //ROW 2 :
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //First Card
                        ProjectCard(
                          title: "Udemy Clone",
                          subTitle: "Web Development",
                          imagePath: "assets/poster1.jpg",
                          url: "https://github.com/Deepak-Kumar-01",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
