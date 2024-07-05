import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final String title;
  final bool aboutMe;
  final bool resume;
  final bool portfolio;
  final bool contact;
  final bool isClicked;

  const HoverButton(
      {Key? key,
      required this.title,
      required this.aboutMe,
      required this.resume,
      required this.portfolio,
      required this.contact,
      required this.isClicked})
      : super(key: key);

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    // print("Status ${widget.aboutMe}");
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          _isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHovering = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        decoration: BoxDecoration(
          color: _isHovering ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(0.0, 2.0),
            ),
          ],
        ),
        child: Text(
          widget.title,
          style: TextStyle(
            color: _isHovering ? Colors.white : Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
