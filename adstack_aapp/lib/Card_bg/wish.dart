import 'package:flutter/material.dart';

class WishCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F50), // Dark blue background
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "✨ Anniversary",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.star, color: Colors.yellowAccent),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              _buildAvatar('assets/user1.png'),
              _buildAvatar('assets/user2.png'),
              _buildAvatar('assets/user3.png'),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Total | 3",
            style: TextStyle(color: Colors.white70, fontSize: 14),
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
            child: Text("🎉 Anniversary Wishing"),
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
