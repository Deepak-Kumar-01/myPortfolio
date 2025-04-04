import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
class LeftProfileView extends StatefulWidget {
  const LeftProfileView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<LeftProfileView> createState() => _LeftProfileViewState();
}

class _LeftProfileViewState extends State<LeftProfileView> {
  bool showLeftView=false;
  bool showLeftContent1=false;
  bool showLeftContent2=false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        showLeftView=true;
      });
    });
    //ShowContent 1
    Future.delayed(Duration(milliseconds: 800),(){
      setState(() {
        showLeftContent1=true;
      });
    });
    //ShowContent 2
    Future.delayed(Duration(milliseconds: 1200),(){
      setState(() {
        showLeftContent2=true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      opacity: showLeftView?1:0,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          width: widget.size.width * 0.22,
          height: widget.size.height * 0.9,
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            color: const Color(0xFF1C1F20),
            // color:Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //First Half Till View Linkedin Button
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: showLeftContent1?1:0.2,
                    curve: Curves.easeIn,
                    child: Column(
                      children: [
                        //Profile Image
                        // Card(
                        //   elevation: 8,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(100),
                        //   ),
                        //   color: const Color(0xFF211F2C),
                        //   child: Container(
                        //     width: 150,
                        //     height: 150,
                        //     decoration: const BoxDecoration(
                        //       shape: BoxShape.circle,
                        //     ),
                        //   ),
                        // ),
                        Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          color: const Color(0xFF211F2C),
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                "assets/profile_img.png", // Replace with your image URL or Asset path
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        //Name Section
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: const Text(
                            "Deepak Kumar",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        //Subtitle
                        Container(
                          margin: EdgeInsets.only(top: 5,bottom: 20),
                          child: const Text(
                            "App Developer",
                            style: TextStyle(
                              // color: Colors.yellowAccent,
                              //   color: Color(0xFFFFEE58),
                              color: Colors.white,
                                fontSize: 16,),
                          ),
                        ),
                        //Button for re-directing it to Linked in profile
                        SizedBox(
                          width: 250,
                          height: 50,
                          child: InkWell(
                            onTap: (){
                              String url="https://www.linkedin.com/in/deepak-kumar-72b18a300/";
                              _launchURL(url);
                            },
                            child: Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              color: Colors.blue[900],
                              child:  Center(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                       const Text(
                                        "View Linkedin Profile",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900),
                                      ),
                                      Image.asset("assets/linkedinIcon.png",width: 35,)
                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(height: 25,),
                      ],
                    ),
                  ),
                  //Second Half After Linked in Button
                  //Social Media handles
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: showLeftContent2?1:0,
                    curve: Curves.easeIn,
                    child: Column(
                      children: [
                        //Email Row
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                  child: Image.asset("assets/gmailLogo.png",),
                                ),
                                const SizedBox(width: 30,),
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Email",style: TextStyle(
                                          fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey
                                      ),),
                                      Text("deepakkumar224336@gmail.com",style: TextStyle(
                                          fontSize: 14,color: Colors.white
                                      ),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 260,
                          // color: Colors.blue,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                      // color: Colors.blue,
                                      child: Image.asset("assets/location.png"),
                                    ),
                                    const SizedBox(width: 30,),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Location",style: TextStyle(
                                              fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey
                                          ),),
                                          Text("Noida, India",style: TextStyle(
                                              fontSize: 14,color: Colors.white
                                          ),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // Column Location + Contact
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 25,
                                      child: Icon(
                                        Icons.call,color: Colors.white,size: 25,
                                      ),
                                    ),
                                    SizedBox(width: 30,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Contact",style: TextStyle(
                                            fontSize: 16,fontWeight: FontWeight.bold,color: Colors.grey
                                        ),),
                                        Text("+91 9263336362",style: TextStyle(
                                            fontSize: 14,color: Colors.white
                                        ),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //Download Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Resume
                      Container(
                        width: 120,
                        height: 50,
                        child: InkWell(
                          onTap: (){
                            String url="https://drive.google.com/file/d/1Vmf4kpMmVdYjNKV2VzwdHhNCaNKiU1e9/view?usp=sharing";
                            _launchURL(url);
                          },
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
                            child:  Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Resume",
                                      style: TextStyle(color: Color(0xFFFFEE58),fontWeight: FontWeight.w900),
                                    ),
                                    Image.asset("assets/download.png",width: 30,color: Colors.white,),
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),
                      //Github
                      Container(
                        width: 120,
                        height: 50,
                        child: InkWell(
                          onTap: (){
                            String url="https://github.com/Deepak-Kumar-01";
                            _launchURL(url);
                          },
                          child: Card(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            // color: Color(0xB35F4EF4),
                            // color: Color(0xFF005175),
                            // color: Color(0xFF0E3F80),
                            // color: Colors.blue[900],
                            color: Color(0xFF222627),
                            child:  Center(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text(
                                      "Github",
                                      style: TextStyle(color: Color(0xFFFFEE58),fontWeight: FontWeight.w900),
                                    ),
                                    Image.asset("assets/github.png",width: 30,color: Colors.white,),
                                  ],
                                )
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if(await canLaunchUrlString(url)){
      await launchUrlString(url);
    }else{
      print("can't launch url");
    }
  }
}