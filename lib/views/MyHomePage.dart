import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'HomeContent.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<DrawerItem> _drawerItems = <DrawerItem>[
    DrawerItem(icon: Icon(Icons.people), label: "People"),
    DrawerItem(icon: Icon(Icons.trending_up), label: "Trending"),
    DrawerItem(icon: Icon(Icons.tv)),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CurvedDrawer(
            color: Colors.lightGreen,
            labelColor: Colors.black54,
            width: 75.0,
            items: _drawerItems,
        onTap: (index) {
          //Handle button tap
        },
      ),
        body: HomeContent(),
      ),
    );
  }
}
