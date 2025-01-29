import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  final String title;
  final Color bgColor;

  SimpleCard({
    required this.title,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Increased size
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
