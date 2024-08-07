// import 'package:flutter/material.dart';
// import 'package:myportfolio/buttons/navigationButton.dart';
// import 'package:myportfolio/pages/aboutme.dart';
// import 'package:myportfolio/pages/contactme.dart';
// import 'package:myportfolio/pages/portfolio.dart';
// import 'package:myportfolio/pages/resume.dart';
//
// class RightProfileView extends StatefulWidget {
//   const RightProfileView({super.key});
//
//   @override
//   State<RightProfileView> createState() => _RightProfileViewState();
// }
// class _RightProfileViewState extends State<RightProfileView> {
//   bool onAboutMe = true;
//   bool onResume = false;
//   bool onPortfolio = false;
//   bool onContact = false;
//   bool isClicked = false;
//   String tabTitle = "About me";
//   double _width = 0.0;
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(milliseconds: 500), () {
//       setState(() {
//         _width = 90.0;  // Update the width to your desired value
//       });
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         width: size.width * 0.7,
//         height: size.height * 0.9,
//         child: Card(
//             elevation: 8,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             color: const Color(0xFF1C1F20),
//             child: Column(
//               children: [
//                 //Navigation Bar
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           margin: EdgeInsets.only(left: 40, top: 20),
//                           child: Text(
//                             "",
//                             style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 30,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                         // AnimatedContainer(
//                         //   margin: EdgeInsets.only(left: 40),
//                         //   duration: Duration(milliseconds: 500),
//                         //   width: _width,
//                         //   height: 6,
//                         //   decoration: BoxDecoration(
//                         //       color: Colors.yellowAccent,
//                         //     borderRadius: BorderRadius.circular(10)
//                         //   ),
//                         // )
//                       ],
//                     ),
//                     //Tabs
//                     Container(
//                       height: 80,
//                       decoration: BoxDecoration(
//                           color: Colors.black12,
//                           borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(30.0),
//                               bottomRight: Radius.circular(5.0)
//                           )),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Row(
//                           children: [
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   onAboutMe = true;
//                                   onResume = false;
//                                   onPortfolio = false;
//                                   onContact = false;
//                                   tabTitle = "About me";
//                                   isClicked = true;
//                                 });
//                               },
//                               hoverColor: Colors.black12,
//                               hoverDuration: Duration(milliseconds: 200),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(16.0),
//                                 child: Text(
//                                   "About Me",
//                                   style: TextStyle(
//                                       color: onAboutMe
//                                           ? Colors.white
//                                           : Colors.white54,
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   _width=0;
//                                   onAboutMe = false;
//                                   onResume = true;
//                                   onPortfolio = false;
//                                   onContact = false;
//                                   tabTitle = "Resume";
//                                   isClicked = true;
//                                 });
//                               },
//                               hoverColor: Colors.black12,
//                               hoverDuration: Duration(milliseconds: 200),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(16.0),
//                                 child: Text(
//                                   "Resume",
//                                   style: TextStyle(
//                                       color: onResume
//                                           ? Colors.white
//                                           : Colors.white54,
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   onAboutMe = false;
//                                   onResume = false;
//                                   onPortfolio = true;
//                                   onContact = false;
//                                   tabTitle = "Portfolio";
//                                   isClicked = true;
//                                 });
//                               },
//                               hoverColor: Colors.black12,
//                               hoverDuration: Duration(milliseconds: 200),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(16.0),
//                                 child: Text(
//                                   "Portfolio",
//                                   style: TextStyle(
//                                       color: onPortfolio
//                                           ? Colors.white
//                                           : Colors.white54,
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
//                                   onAboutMe = false;
//                                   onResume = false;
//                                   onPortfolio = false;
//                                   onContact = true;
//                                   tabTitle = "Contact me";
//                                   isClicked = true;
//                                 });
//                               },
//                               hoverColor: Colors.black12,
//                               hoverDuration: Duration(milliseconds: 200),
//                               child: Padding(
//                                 padding: const EdgeInsets.all(16.0),
//                                 child: Text(
//                                   "Contact me",
//                                   style: TextStyle(
//                                       color: onContact
//                                           ? Colors.white
//                                           : Colors.white54,
//                                       fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 50,
//                 ),
//                 //Content Area
//                 onAboutMe
//                     ? AboutMe(title: "About Me",width: 0,)
//                     : onResume
//                     ? Resume(title: "MyResume",width: 0,)
//                     : onPortfolio
//                     ? Portfolio()
//                     : onContact
//                     ? ContactMe()
//                     : Text(""),
//               ],
//             )),
//       ),
//     );
//   }
// }
