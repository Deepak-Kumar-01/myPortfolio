import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CertificateCard extends StatefulWidget {
  final String companyWebsiteUrl;
  final String imageOfCompany;
  final String companyName;
  final String projectName;
  const CertificateCard(
      {super.key,
        required this.companyWebsiteUrl,
        required this.imageOfCompany,
        required this.companyName,
        required this.projectName});

  @override
  State<CertificateCard> createState() => _CertificateCardState();
}

class _CertificateCardState extends State<CertificateCard> {
  bool _isHovered = false;
  Future<void> _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      print("can't launch url");
    }
  }

  @override
  Widget build(BuildContext context)  {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        String url = widget.companyWebsiteUrl;
        _launchURL(url);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MouseRegion(
            onEnter: (_) {
              setState(() {
                _isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                _isHovered = false;
              });
            },
            child: Stack(
              children: [
                //Image Card
                SizedBox(
                  width: 300,
                  height: 200,
                  child: Card(
                    elevation: 8,
                    color: const Color(0xFF222627),
                    child: Align(
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        width: _isHovered ? 300 : 280,
                        height: _isHovered ? 200 : 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.imageOfCompany),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ),
                //OnHover View Image
                _isHovered
                    ? Positioned(
                  left: 2,
                  top: 4,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width: 294,
                    height: 194,
                    decoration: BoxDecoration(
                        color: const Color(0x80000000),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
                    : Text(""),
                //View Icon
                Container(
                  margin: const EdgeInsets.only(left: 128, top: 68),
                  child: AnimatedOpacity(
                      opacity: _isHovered ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 500),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/view.png",
                            color: const Color(0xFFFFEE58),
                            width: 40,
                          ),
                          const Text(
                            "View",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}