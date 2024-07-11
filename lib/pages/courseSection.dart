import 'package:flutter/material.dart';

class CourseSection extends StatefulWidget {
  const CourseSection({super.key});

  @override
  State<CourseSection> createState() => _CourseSectionState();
}

class _CourseSectionState extends State<CourseSection> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(top: size.height*0.2),
        decoration: BoxDecoration(
            color: Colors.green,
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.all(30),
        child: Text("Ongoing",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
