import 'package:flutter/material.dart';
import 'package:latiseducation_app/common/style.dart';
import 'package:latiseducation_app/ui/home_page.dart';

class LayoutNavigationBar extends StatefulWidget {
  const LayoutNavigationBar({super.key});

  @override
  State<LayoutNavigationBar> createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: primaryColor),
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomTapped,
      ),
    );
  }

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Search',
    ),
    const BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('images/go_icon.png')),
      label: 'Go',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add_box),
      label: 'Add',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_box),
      label: 'Profile',
    )
  ];

  void _onBottomTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
}
