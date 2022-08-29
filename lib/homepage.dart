import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/account.dart';
import 'package:tiktok_ui/pages/chat.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/plus.dart';
import 'package:tiktok_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateButtonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Search(),
    Plus(),
    Chat(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateButtonNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_rounded), label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outline_rounded), label: 'chat'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
