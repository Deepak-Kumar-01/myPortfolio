import 'package:flutter/material.dart';

class InternshipDetails extends StatefulWidget {
  final String companyName;
  final String projectName;
  final String session;
  final String description;
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;
  final String imagePath4;
  const InternshipDetails(
      {super.key,
      required this.companyName,
      required this.projectName,
      required this.session,
      required this.description,
      required this.imagePath1,
      required this.imagePath2,
      required this.imagePath3,
      required this.imagePath4});

  @override
  State<InternshipDetails> createState() => _InternshipDetailsState();
}

class _InternshipDetailsState extends State<InternshipDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Company Name
        Padding(
          padding: const EdgeInsets.only(top: 8,bottom: 0),
          child: Text(
            widget.companyName,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        //Project Name + Session
        Padding(
            padding: const EdgeInsets.only(top: 8,bottom: 2),

            child: Row(
              children: [
                Text(
                  widget.projectName,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.session,
                    style: const TextStyle(
                      color: Color(0xFFFFEE58),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )),
        //Description
        Padding(
          padding: const EdgeInsets.only(top: 0,bottom: 5),
          child: Text(
            widget.description,
            style: TextStyle(
              color: Colors.white54,
              fontSize: 14,
            ),
            maxLines: 3,
          ),
        ),
      ],
    );
    ;
  }
}
