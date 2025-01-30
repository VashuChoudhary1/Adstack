import 'package:adstack_aapp/Card_bg/allPrj_card.dart';
import 'package:adstack_aapp/Card_bg/calender.dart';
import 'package:adstack_aapp/Card_bg/card_wid.dart';
import 'package:adstack_aapp/Card_bg/graph_card.dart';
import 'package:adstack_aapp/Card_bg/top_creator_card.dart';
import 'package:adstack_aapp/Card_bg/wish.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600; // Adjust the breakpoint as needed

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
                    // Check for mobile size and adapt layout
                    isMobile
                        ? Column(
                            children: [
                              SizedBox(
                                width: screenWidth * 0.9,
                                height: 250,
                                child: CardWid(),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: AllprjCard(),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: SizedBox(
                                      height: 250,
                                      child: TopCreatorCard(),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              SizedBox(
                                  width: screenWidth * 0.9,
                                  height: 250,
                                  child: GraphCard()),
                            ],
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 900,
                                      height: 250,
                                      child: CardWid(),
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 250,
                                            child: AllprjCard(),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          flex: 1,
                                          child: SizedBox(
                                            height: 250,
                                            child: TopCreatorCard(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    SizedBox(
                                        width: 900,
                                        height: 300,
                                        child: GraphCard()),
                                  ],
                                ),
                              ),

                              SizedBox(width: 20), // Space between widgets

                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 1000,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 1, 22, 58)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          "GENERAL 10:00 AM TO 7:00 PM",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: CalendarCard(),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Flexible(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: WishCard(),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Flexible(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: WishCard(),
                                        ),
                                      ),
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
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    return Row(
      children: [
        Text("Home", style: TextStyle(color: Colors.blueGrey, fontSize: 20)),
        SizedBox(width: isMobile ? 20 : 800), // Adjust space for mobile
        isMobile
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  // Handle opening menu or drawer
                },
              )
            : SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.white),
                    filled: true,
                    fillColor: Colors.black,
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
            radius: 20, backgroundImage: AssetImage("assets/profile_icon.jpg"))
      ],
    );
  }
}
