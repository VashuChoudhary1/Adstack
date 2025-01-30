import 'package:flutter/material.dart';

class TopCreatorCard extends StatelessWidget {
  const TopCreatorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> creatorList = List.generate(
      5, // Only 5 items
      (index) => CreatorItem(),
    );
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 1, 22, 58),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Creators",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          // Display the child widget (either multiple texts or a graph)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Name ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "Artworks ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "Rating ",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: creatorList.length,
              itemBuilder: (context, index) {
                return creatorList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CreatorItem extends StatelessWidget {
  const CreatorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 44, 22, 95),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            CircleAvatar(radius: 10, backgroundColor: Colors.grey),
            SizedBox(width: 15),
            Row(
              children: [
                //email id of creator
                Text(
                  "@email_ab123",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 30),
                //number of artworks
                Text(
                  "1234",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                SizedBox(width: 120),
                //starts present here
                Icon(Icons.star, color: Colors.yellowAccent)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
