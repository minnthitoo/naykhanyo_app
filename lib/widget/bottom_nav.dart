import 'package:flutter/material.dart';
import 'package:naykhanyo/screen/home.dart';
import 'package:naykhanyo/screen/setting.dart';
import 'package:naykhanyo/screen/upload.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home)
    ),
    BottomNavigationBarItem(
      label: 'New',
      icon: Icon(Icons.add)
    ),
    BottomNavigationBarItem(
      label: 'Settings',
      icon: Icon(Icons.settings)
    ),
  ];
  final List<Widget> _screens = const[
    Home(),
    Upload(),
    Setting()
  ];
  Widget _body = Home();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
            _body = _screens[index];
          });
        },
        items: _items,
      ),
    );
  }
}
