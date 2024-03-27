import 'package:flutter/material.dart';
import 'package:expense_tracker/pages/navHome.dart';
import 'package:expense_tracker/pages/navProfile.dart';
import 'package:expense_tracker/pages/navSettings.dart';
import 'package:expense_tracker/pages/navTransactions.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  int _navIndex = 0;

  void _navigateBottom(int index) {
    setState(() {
      _navIndex = index;
    });
  }

  //list of pages in home page
final List<Widget> _pages = [
  //add home navigation pages
  NavHome(),
  Transactions(),
  Settings(),
  Profile(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        onTap: _navigateBottom,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: Colors.black45,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart_outlined), label: 'Transactions'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'You'),
        ],
      ),
    );
  }
}
