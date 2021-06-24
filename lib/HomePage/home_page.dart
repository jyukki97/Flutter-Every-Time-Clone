import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/Widget/favorite_board_widget.dart';
import 'package:flutter_app/HomePage/Widget/realtime_board_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_bottons_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_list_widget.dart';
import 'package:flutter_app/state.dart';

import 'Widget/hot_board_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = PageController(viewportFraction: 0.8);
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0,);
  final List<dynamic> items = [1,2,3,4,5,6,7,8];
  double elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      if(_scrollController.offset > 0){
        if(elevation==0.0){
          setState(() {
            elevation = 5.0;
          });
        }

      }else {
        if(elevation==5.0){
          setState(() {
            elevation = 0.0;
          });
        }
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: elevation,
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
            ClipOval(
              child: Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                  },
                  child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 28,
                      )
                  ),
                ),
              ),
            ),
            ClipOval(
              child: Material(
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                      width: 56,
                      height: 56,
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.black,
                        size: 28,
                      )
                  ),
                ),
              ),
            ),
            SizedBox(width: 5,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            TopListWidget(),
            TopButtonsWidget(),
            Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color:borderColor
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('assets/images/thumnnail.png')
                )
            ),
            FavoriteBoardWidget(),
            RealtimeBoardWidget(),
            HotBoardWidget()
          ],
        ),
      ),
    );
  }
}