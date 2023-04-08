import 'package:bus_app/view/profileView.dart';
import 'package:bus_app/view/ticketView.dart';
import 'package:bus_app/view/travelsView.dart';
import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int pageIndex = 0;

  final pages = [
    TicketView(),
    const TravelsView(),
    const ProfileView(),
  ];

  void onTap(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[pageIndex],
        bottomSheet:  BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Travels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: pageIndex,
        onTap: onTap, 
              ),
      );
    
  }
}
