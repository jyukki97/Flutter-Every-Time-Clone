import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/Widget/top_bottons_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_list_widget.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/state.dart';

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
            elevation = 3.0;
          });
        }

      }else {
        if(elevation==3.0){
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
            circleIconButton(Icons.search_rounded, Colors.white, 56.0, 28.0, (){}),
            circleIconButton(Icons.person_outline_rounded, Colors.white, 56.0, 28.0, (){}),
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
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
            for (var i in homePageBoardSample) BoxWidget(board: i,)
          ],
        ),
      ),
    );
  }
}