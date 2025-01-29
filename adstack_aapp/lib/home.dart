import 'package:adstack_aapp/Card_bg/calender.dart';
import 'package:adstack_aapp/Card_bg/card_wid.dart';
import 'package:adstack_aapp/Card_bg/simple_card.dart';
import 'package:adstack_aapp/Card_bg/wish.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Navbar
            TopNavBar(),
            SizedBox(height: 20),

            // Scrollable Content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2, // Takes 2 parts of the screen
                          child: Column(
                            children: [
                              Container(
                                width: 900,
                                height: 250,
                                child: CardWid(
                                  title: "Top Rating Project",
                                  bgColor: Colors.purple,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Trending project and high rating ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          )),
                                      Text(
                                        "Project Created by team.",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 1, 21, 54),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Center(
                                          child: Text(
                                            "Learn More.",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250,
                                      child: SimpleCard(
                                        title: "All Project",
                                        bgColor: Colors.indigoAccent,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250,
                                      child: SimpleCard(
                                        title: "Top Creators",
                                        bgColor: Colors.indigoAccent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Container(
                                width: 900,
                                height: 250,
                                child: SimpleCard(
                                  title: "Top Rating Project",
                                  bgColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(width: 20), // Space between widgets

                        Expanded(
                          flex: 1, // Takes 1 part of the screen
                          child: Container(
                            height: 800,
                            width: 200,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 1, 22, 58)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: Text(
                                    "GENERAL 10:00 AM TO 7:00 PM",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                    height: 150,
                                    width: 150,
                                    child: CalendarCard()),
                                SizedBox(height: 10),
                                Container(
                                    height: 150, width: 150, child: WishCard()),
                                SizedBox(height: 10),
                                Container(
                                    height: 150, width: 150, child: WishCard()),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Home", style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
        SizedBox(width: 800),
        Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.search),
              hintText: "Search...",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Icon(Icons.calendar_month, size: 28, color: Colors.black),
        SizedBox(width: 15),
        Icon(Icons.notifications, size: 28, color: Colors.black),
        SizedBox(width: 15),
        Icon(Icons.exit_to_app, size: 28, color: Colors.black),
        SizedBox(width: 15),
        CircleAvatar(
          backgroundColor: Colors.black,
          radius: 12,
        ),
      ],
    );
  }
}
