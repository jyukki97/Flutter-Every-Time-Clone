import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CampusPage/campus_page.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/PostSetPage/post_set_page.dart';
import 'package:flutter_app/SchedulePage/schedule_page.dart';
import 'NoticePage/notice_page.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> page = [
    HomePage(),
    SchedulePage(),
    PostSetPage(),
    NoticePage(),
    CampusPage()
  ];

  bottomItem(icon, index) {
    return BottomNavigationBarItem(
      title: Text(''),
      icon: Icon(
        icon,
        color: currentIndex == index ? Colors.black : Colors.grey,
        size: 25.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          bottomItem(Icons.home_outlined, 0),
          bottomItem(Icons.web_outlined, 1),
          bottomItem(Icons.wysiwyg_rounded, 2),
          bottomItem(Icons.notifications_none_rounded, 3),
          bottomItem(Icons.alternate_email_rounded, 4),
        ],
      ),
    );
  }
}