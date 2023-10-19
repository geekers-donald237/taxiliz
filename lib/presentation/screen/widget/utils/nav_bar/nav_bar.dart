import 'package:flutter/material.dart';
import 'package:taxiliz/presentation/screen/pages/home/home_screen.dart';
import 'package:taxiliz/presentation/screen/pages/notification/notification_screen.dart';
import 'package:taxiliz/presentation/screen/pages/profile/profile_screen.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({super.key});

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle_outlined),
            icon: Icon(Icons.account_circle_outlined),
            label: 'My Acount',
          ),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        NotificationScreen(),
        profileScreen(),
      ][currentPageIndex],
    );
  }
}
