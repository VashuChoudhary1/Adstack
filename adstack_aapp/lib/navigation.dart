import 'package:adstack_aapp/attendance.dart';
import 'package:adstack_aapp/employees.dart';
import 'package:adstack_aapp/home.dart';
import 'package:adstack_aapp/info.dart';
import 'package:adstack_aapp/summary.dart';
import 'package:flutter/material.dart';

class NavigationSidebar extends StatelessWidget {
  const NavigationSidebar({super.key});

  void _navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/icon.png",
              height: 110,
              width: 130,
              fit: BoxFit.cover,
            ),
          ),
          Divider(),
          Center(
              child: Container(
                  padding: EdgeInsets.all(4), // Border thickness
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.orange, width: 4),
                  ),
                  child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/profile_icon.jpg")))),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Vashu Choudhary",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Container(
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
          ),
          SizedBox(height: 20),
          Divider(),
          _buildNavItem("Home", Icons.home, context, HomePage()),
          _buildNavItem("Employees", Icons.people, context, EmployeesPage()),
          _buildNavItem(
              "Attendance", Icons.access_time, context, AttendancePage()),
          _buildNavItem(
              "Summary", Icons.calendar_month, context, SummaryPage()),
          _buildNavItem("Information", Icons.info_outline_rounded, context,
              InformationPage()),
          Text(
            "WORKSPACES  + ",
            style: TextStyle(
                color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Divider(),
          _buildNavItem("Settings", Icons.settings, context, HomePage()),
          _buildNavItem("Logout", Icons.exit_to_app, context, HomePage()),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      String title, IconData icon, BuildContext context, Widget page) {
    return ListTile(
      leading: Icon(icon, size: 24, color: Colors.black), // Sidebar Icon
      title: Text(title,
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold)),
      onTap: () => _navigateToPage(context, page),
    );
  }
}
