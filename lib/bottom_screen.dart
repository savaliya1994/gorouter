import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({
    Key? key,
    required this.navigationShell,
  }) : super(key: key);

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => _onTap(context, value),
        currentIndex: navigationShell.currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
        fixedColor: Colors.teal,
        selectedIconTheme: IconThemeData(color: Colors.teal),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        selectedLabelStyle: TextStyle(color: Colors.teal, fontSize: 12),
        unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      body: navigationShell,
    );
  }

  void _onTap(BuildContext context, int index) {
    print('index====$index');
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
