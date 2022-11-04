import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../data/DrawerItems.dart';
import 'HomeContent.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CurvedDrawer(
          color: Colors.lightGreen,
          //backgroundColor: Colors.white,
          //labelColor: Colors.white,
          width: 75.0,
          items: DrawerItemList.drawerItems,
          onTap: (index) {
            //Handle button tap
          },
        ),
        body: HomeContent(),
      ),
    );
  }
}