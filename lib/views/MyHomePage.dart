import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'HomeContent.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const List<DrawerItem> _drawerItems = <DrawerItem>[
    DrawerItem(icon: Icon(Icons.energy_savings_leaf_outlined,color: Colors.lightGreen,),),
    DrawerItem(icon: Icon(Icons.home_outlined,color: Colors.lightGreen,),),
    DrawerItem(icon: Icon(Icons.shopping_cart_outlined,color: Colors.lightGreen,),),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CurvedDrawer(
          color: Colors.lightGreen,
          //backgroundColor: Colors.white,
          //labelColor: Colors.white,
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