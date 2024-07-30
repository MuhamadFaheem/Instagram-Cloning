import 'package:flutter/material.dart';

import 'pages/activity.dart';
import 'pages/home.dart';
import 'pages/profile.dart';
import 'pages/reels.dart';
import 'pages/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomePage(),
      SearchPage(),
      ReelsPage(),
      ActivityPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Colors.white,
          child: BottomNavigationBar(
            items: [
              _buildNavBarItem(
                _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                0,
              ),
              _buildNavBarItem(
                _selectedIndex == 1 ? Icons.search : Icons.search,
                1,
              ),
              _buildNavBarItem(
                _selectedIndex == 2
                    ? Icons.movie_creation
                    : Icons.movie_creation_outlined,
                2,
              ),
              _buildNavBarItem(
                _selectedIndex == 3 ? Icons.chat : Icons.chat_outlined,
                3,
              ),
              _buildNavBarItem(
                _selectedIndex == 4
                    ? Icons.account_circle
                    : Icons.account_circle_outlined,
                4,
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black.withOpacity(0.5),
            iconSize: 24.0, // Adjusted icon size
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavBarItem(
    IconData icon,
    int index,
  ) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.white,
      icon: Icon(
        icon,
        color: Colors.black, // All icons are black
        size: 30.0, // Adjusted icon size
      ),
      label: '', // No labels
      activeIcon: Icon(
        icon,
        color: Colors.black,
        size: 30.0, // Adjusted icon size for selected
      ),
    );
  }
}
