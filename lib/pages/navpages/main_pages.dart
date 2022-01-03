import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navpages/bar_item_page.dart';
import 'package:flutter_cubit/pages/navpages/home_page.dart';
import 'package:flutter_cubit/pages/navpages/my_pages.dart';
import 'package:flutter_cubit/pages/navpages/search_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    Mypage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Bar", icon: Icon(Icons.bar_chart_rounded)),
          BottomNavigationBarItem(
              label: "Search", icon: Icon(Icons.search_off_rounded)),
          BottomNavigationBarItem(
              label: "My", icon: Icon(Icons.person_outline)),
        ],
      ),
    );
  }
}
