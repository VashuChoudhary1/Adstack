import 'package:flutter/material.dart';

class CardWid extends StatelessWidget {
  final String title;
  final Color bgColor;
  final Widget child; // <-- Accepts any widget as content

  CardWid({
    required this.title,
    required this.bgColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          // Display the child widget (either multiple texts or a graph)
          child,
        ],
      ),
    );
  }
}
