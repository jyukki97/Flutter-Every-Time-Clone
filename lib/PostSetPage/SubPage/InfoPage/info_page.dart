import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';

class InfoPage extends StatefulWidget {
  final List<Board> boardList;
  InfoPage({this.boardList});

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
              for (var i in widget.boardList) BoxWidget(board: i)
            ],
          ),
        )
    );
  }
}