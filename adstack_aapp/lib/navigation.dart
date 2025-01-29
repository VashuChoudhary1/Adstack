import 'package:adstack_aapp/attendance.dart';
import 'package:adstack_aapp/employees.dart';
import 'package:adstack_aapp/home.dart';
import 'package:adstack_aapp/info.dart';
import 'package:adstack_aapp/summary.dart';
import 'package:flutter/material.dart';

class NavigationSidebar extends StatelessWidget {
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
          Text(
            "LOGO",
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          Center(child: CircleAvatar(radius: 40, backgroundColor: Colors.grey)),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Vashu Choudhary",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          Center(
            child: Container(
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: Text("Action"),
            ),
          ),
          SizedBox(height: 20),
          Divider(),
          _buildNavItem("Home", Icons.home, context, HomePage()),
          _buildNavItem("Employees", Icons.people, context, EmployeesPage()),
          _buildNavItem(
              "Attendance", Icons.access_time, context, AttendancePage()),
          _buildNavItem("Summary", Icons.insert_chart, context, SummaryPage()),
          _buildNavItem("Information", Icons.info, context, InformationPage()),
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
      leading: Icon(icon, size: 24, color: Colors.black54), // Sidebar Icon
      title: Text(title, style: TextStyle(fontSize: 16)),
      onTap: () => _navigateToPage(context, page),
    );
  }
}
