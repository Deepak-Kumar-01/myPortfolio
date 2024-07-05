import 'package:flutter/material.dart';

class Resume extends StatefulWidget {
  final String title;
  final int width;
  const Resume({super.key,required this.title,required this.width});

  @override
  State<Resume> createState() => _ResumeState();
}
class _ResumeState extends State<Resume> {
  double _width=0;
  @override
  void initState() {
    print("Resume Widget is called");
    int w=widget.width;
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
         w=110;
         _width=w as double;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 40, top: 20),
          child: Text(
            widget.title,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
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
              borderRadius: BorderRadius.circular(10)
          ),
        )
      ],
    );
  }
}
