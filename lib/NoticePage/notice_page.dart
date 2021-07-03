import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/NoticePage/SubPage/msg_page.dart';
import 'package:flutter_app/PostSetPage/SubPage/BoardPage/board_page.dart';
import 'package:flutter_app/PostSetPage/SubPage/InfoPage/info_page.dart';

import 'SubPage/notice_list_page.dart';

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> with TickerProviderStateMixin {
  TabController _controller;
  double elevation = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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
                Text("알림"),
                Text("쪽지함"),
              ],
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: [
              NoticeListPage(),
              MsgPage(),
            ],
          )
      ),
    );
  }
}