// @dart=2.9
import 'package:flutter/material.dart';
import 'package:expanding_bottom_bar/expanding_bottom_bar.dart';
import 'package:my_favorite_anime/appscreens/Goods.dart';
import 'package:my_favorite_anime/appscreens/Home.dart';
import 'package:my_favorite_anime/appscreens/Profile.dart';


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [Home(), Goods(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorite Anime'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: ExpandingBottomBar(
        navBarHeight: 90.0,
        items: [
          ExpandingBottomBarItem(
            icon: Icons.home,
            selectedColor: Colors.purple,
            text: "Home",
          ),
          ExpandingBottomBarItem(
            icon: Icons.shopping_bag,
            selectedColor: Colors.teal,
            text: "Goods",
          ),
          ExpandingBottomBarItem(
            icon: Icons.person,
            selectedColor: Colors.red,
            text: "Profile",
          ),
        ],
        selectedIndex: _selectedIndex,
        onIndexChanged: (int value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
