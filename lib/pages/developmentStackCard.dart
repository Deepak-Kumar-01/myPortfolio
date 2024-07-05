import 'package:flutter/material.dart';
class DevelopmentStackCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            // Image on the left
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(8.0),
            //   child: Image.network(
            //     'https://unsplash.com/photos/a-person-standing-on-a-beach-next-to-a-body-of-water--7JJQHeUYAs',
            //     width: 100,
            //     height: 100,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            SizedBox(width: 16.0),
            // Content on the right
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Card Title',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'This is a brief description of the card content. It can span multiple lines and provide detailed information about the card.',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}