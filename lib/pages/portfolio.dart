import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  final String title;
  final int width;
  const Portfolio({super.key,required this.title,required this.width});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  double _width=0;
  void initState() {
    int w=widget.width;
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        w=90;
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
