import 'package:flutter/material.dart';

import 'content.dart';

class InternshipCard extends StatefulWidget {
  const InternshipCard({super.key});

  @override
  State<InternshipCard> createState() => _InternshipCardState();
}

class _InternshipCardState extends State<InternshipCard> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      width: 420,
      height: 400,
      child: Card(
        elevation: 8,
        color: Color(0xFF222627),
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
                  SizedBox(width: 15,),
                  //Internship Name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: const Text(
                          "Full Stack MERN Intern",
                          style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ),
                      //Company Name
                      Container(
                        child: Text(
                          "Innvocon",
                          style: TextStyle(color: Colors.white54,fontSize: 14,),
                        ),
                      ),
                      Container(
                        child: Text(
                          "June 2020- Nov 2021",
                          style: TextStyle(color: Colors.white54,fontSize: 14,),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //Brief
            Padding(
              padding: const EdgeInsets.only(left: 25.0,right: 25,top: 25,bottom: 10),
              child: Container(
                child: const Text(innvoconInternContent,style: TextStyle(
                  color: Colors.white,fontSize: 15,
                ),maxLines: 10,textAlign:TextAlign.left,),
              ),
            ),
            //Skills
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Skills: ",style: TextStyle(
                    color: Colors.yellowAccent,fontSize: 20
                  ),),
                  SizedBox(width: 10,),
                  Text("• React • Express • MongoDB • Node.js",style: TextStyle(color: Colors.white,fontSize: 16),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
