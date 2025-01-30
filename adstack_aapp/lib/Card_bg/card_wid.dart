import 'package:flutter/material.dart';

class CardWid extends StatelessWidget {
  const CardWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [Color(0xFF7F3CFF), Color(0xFFFF66C4)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ETHEREUM 2.0",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Top Rating Project",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
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
