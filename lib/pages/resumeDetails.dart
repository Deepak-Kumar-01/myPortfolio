import 'package:flutter/material.dart';

class ResumeDetails extends StatefulWidget {
  final String title;
  final String session;
  final String description;
  final String cgpa;
  final String sgpa;
  final String status;
  const ResumeDetails(
      {super.key,
      required this.title,
      required this.session,
      required this.description,
      required this.cgpa,required this.sgpa,required this.status});

  @override
  State<ResumeDetails> createState() => _ResumeDetailsState();
}

class _ResumeDetailsState extends State<ResumeDetails> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //Education
      child: EducationSection(widget: widget),
    );
  }
}

class EducationSection extends StatelessWidget {
  const EducationSection({
    super.key,
    required this.widget,
  });

  final ResumeDetails widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //College Name
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,bottom: 5),
            child: Text(
              widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.status,
              style: const TextStyle(
                  color: Color(0xFFFFEE58),
                  fontSize: 16,
              ),
            ),
          ),
        ],),
        //Session
        Padding(
          padding: const EdgeInsets.only(top: 5,bottom: 0),
          child: Text(
            widget.session,
            style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                ),
          ),
        ),
        //Description
        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 5),
          child: Text(
            widget.description,
            style: TextStyle(color: Colors.white54,
                fontSize: 14,
            ),
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}

