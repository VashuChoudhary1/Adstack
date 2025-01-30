import 'package:flutter/material.dart';

class NavigationSidebar extends StatelessWidget {
  final Function(int) onItemTapped;
  const NavigationSidebar({super.key, required this.onItemTapped});

  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isMobile = screenWidth < 600;
    return Container(
      width: isMobile ? screenWidth * 0.7 : 200,
      height: screenHeight,
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/icon.png",
            height: 60,
            width: 130,
            fit: BoxFit.cover,
          ),
          Divider(),
          Container(
              padding: EdgeInsets.all(4), // Border thickness
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 4),
              ),
              child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/profile_icon.jpg"))),
          SizedBox(height: 20),
          Text(
            "Vashu Choudhary",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.purple, width: 2),
            ),
            child: Center(
              child: Text("Admin",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          _buildNavItem("Home", Icons.home, context, 0),
          _buildNavItem("Employees", Icons.people, context, 1),
          _buildNavItem("Attendance", Icons.access_time, context, 2),
          _buildNavItem("Summary", Icons.calendar_month, context, 3),
          _buildNavItem("Information", Icons.info_outline_rounded, context, 4),
          _textWithIcon("WORKSPACES", Icons.add),
          SizedBox(height: 5),
          _textWithIcon("Adstacks", Icons.arrow_drop_down),
          SizedBox(height: 5),
          _textWithIcon("Finance", Icons.arrow_drop_down),
          Spacer(),
          Divider(),
          _buildNavItem("Settings", Icons.settings, context, 0),
          _buildNavItem("Logout", Icons.exit_to_app, context, 0),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      String title, IconData icon, BuildContext context, int index) {
    return ListTile(
      leading: Icon(icon, size: 24, color: Colors.black), // Sidebar Icon
      title: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
      onTap: () => onItemTapped(index),
    );
  }

  Widget _textWithIcon(String textTitle, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textTitle,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Icon(
          icon,
          color: Colors.black,
          size: 25,
        )
      ],
    );
  }
}
