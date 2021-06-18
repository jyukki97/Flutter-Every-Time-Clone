import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/home_page.dart';
import 'package:flutter_app/state.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> page = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage()
  ];

  bottomItem(icon, index) {
    return BottomNavigationBarItem(
      title: Text(''),
      icon: Icon(
        icon,
        color: currentIndex == index ? Colors.black : Colors.grey,
        size: 30.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0.0,
          titleSpacing: 20,
          backgroundColor: Colors.white,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "에브리타임",
                style: TextStyle(
                  fontSize: 10,
                  color: mainColor
                ),
              ),
              Text(
                "인하대",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(top: 15),
                icon:  Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: (){

                }
            ),
            IconButton(
                padding: EdgeInsets.only(top: 15, right: 10),
                icon:  Icon(
                  Icons.person_outline_rounded,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: (){
                }
            )
          ],
        ),
      ),
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
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