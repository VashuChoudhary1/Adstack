import 'package:flutter/material.dart';

class CardWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Rating Project",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Trending project and high rating ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
              Text(
                "Project Created by team.",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 1, 21, 54),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                  child: Text(
                    "Learn More.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
