import 'package:adstack_aapp/Screen/attendance.dart';
import 'package:adstack_aapp/Screen/employees.dart';
import 'package:adstack_aapp/Screen/home.dart';
import 'package:adstack_aapp/Screen/info.dart';
import 'package:adstack_aapp/Screen/navigation.dart';
import 'package:adstack_aapp/Screen/summary.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard App',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    EmployeesPage(),
    AttendancePage(),
    SummaryPage(),
    InformationPage(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Sidebar (Fixed Navigation)
          NavigationSidebar(onItemTapped: _onNavItemTapped),

          // Main Content (Home Page by Default)
          Expanded(
            flex: 6,
            child: _pages[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
