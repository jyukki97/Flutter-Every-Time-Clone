import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/CampusPage/Widget/grid_widget.dart';
import 'package:flutter_app/Utils/Function.dart';

import '../state.dart';

class CampusPage extends StatefulWidget {
  @override
  _CampusPageState createState() => _CampusPageState();
}

class _CampusPageState extends State<CampusPage> {
  ScrollController _scrollController = ScrollController(initialScrollOffset: 0,);
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
                "대학생 SNS",
                style: TextStyle(
                    fontSize: 10,
                    color: campusColor
                ),
              ),
              Text(
                "캠퍼스픽",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
            ],
          ),
          actions: [
            circleIconButton(Icons.messenger_rounded, Colors.white, 56.0, 28.0, campusColor, (){}),
            SizedBox(width: 5,)
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            GridWidget()
          ],
        ),
      ),
    );
  }
}