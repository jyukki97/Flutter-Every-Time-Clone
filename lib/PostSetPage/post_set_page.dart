import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/board_page.dart';
import 'package:flutter_app/PostSetPage/SubPage/InfoPage/info_page.dart';

import 'SubPage/groupPage/group_page.dart';

class PostSetPage extends StatefulWidget {
  @override
  _PostSetPageState createState() => _PostSetPageState();
}

class _PostSetPageState extends State<PostSetPage> with TickerProviderStateMixin {
  TabController _controller;
  double elevation = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: elevation,
            title: TabBar(
              controller: _controller,
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black, width: 2.5),
                insets: EdgeInsets.all(5)
              ),
              labelPadding: EdgeInsets.all(5),
              labelColor: Colors.black,
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(
                fontSize: 20,
              ),
              tabs: [
                Text("게시판"),
                Text("정보"),
                Text("홍보"),
                Text("단체")
              ],
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              BoardPage(),
              InfoPage(boardList: infoBoardSample),
              InfoPage(boardList: promBoardSample,),
              GroupPage(),
            ],
          )
        ),
    );
  }
}