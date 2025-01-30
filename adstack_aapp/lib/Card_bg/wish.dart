import 'package:flutter/material.dart';

class WishCard extends StatelessWidget {
  const WishCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F50), // Dark blue background
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "✨ Anniversary",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 5),
              Icon(Icons.star, color: Colors.yellowAccent),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAvatar('assets/user1.png'),
              _buildAvatar('assets/user2.png'),
              _buildAvatar('assets/user3.png'),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Total  | 3 |",
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF7356C9), // Purple button
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              print("Anniversary Wishes Clicked!");
            },
            child: Text("🎉 Anniversary Wishing",
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  // Helper Widget for Profile Avatars
  Widget _buildAvatar(String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: CircleAvatar(
        radius: 18,
        // backgroundImage: AssetImage(imagePath),
        backgroundColor: Colors.white,
      ),
    );
  }
}
