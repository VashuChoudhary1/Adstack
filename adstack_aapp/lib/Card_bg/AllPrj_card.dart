import 'package:flutter/material.dart';

class AllprjCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> projectList = List.generate(
      5, // Only 5 items
      (index) => ProjectItem(),
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
            "All Project",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 15),

          // Display the child widget (either multiple texts or a graph)
          Expanded(
            child: ListView.builder(
              itemCount: projectList.length,
              itemBuilder: (context, index) {
                return projectList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
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
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 255, 255, 255)),
            ),
            SizedBox(width: 15),
            // Content (Heading, Subheading, Link, and Pencil Icon)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Technology behind the BlockChain",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "Project #1",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          // Handle link click
                          print('Link clicked:');
                        },
                        child: Text(
                          "See project details",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Pencil icon on the right side
            Positioned(
                bottom: 0,
                right: 0,
                top: 10,
                child: Icon(Icons.edit, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
// Define a list of all project items
