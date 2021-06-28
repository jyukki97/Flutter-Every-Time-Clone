import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/moreWidget.dart';
import 'package:flutter_app/Utils/custom_scroll_physics.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  ScrollController scrollController = ScrollController();
  double elevation = 0.0;

  @override
  Widget build(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.offset > 0) {
        if (elevation == 0.0) {
          setState(() {
            elevation = 3.0;
          });
        }
      } else {
        if (elevation == 3.0) {
          setState(() {
            elevation = 0.0;
          });
        }
      }
    });
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0.0,
          elevation: elevation,
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              MoreWidget(title: "인기 게시물", moreFunc: (){}, items: popularContentsSample, boardType: contentWithTitle,),
              MoreWidget(title: "정보게시판", moreFunc: (){}, items: infoContentsSample, boardType: contentWithDate,)
            ],
          ),
        )
    );
  }
}