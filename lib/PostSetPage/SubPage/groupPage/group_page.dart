import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/board_sample.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/Utils/Widget/boxWidget.dart';
import 'package:flutter_app/state.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  ScrollController scrollController = ScrollController();
  double elevation = 0.0;
  Content _content = Content(
      title: "게시판 개설을 원하시나요?",
    content: "총학생회, 단과대 학생회, 공식 언론사 등\n개설을 원하는 교내단체는 문의해주세요"
  );
  makeBoard(item, tapFunc) {
    return InkWell(
      onTap: tapFunc,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            item.title == null
                ? SizedBox()
                : Text(
              item.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                item.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 5,),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: mainColor
                ),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Text(
                "개설 요청하기",
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

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
              for (var i in groupBoardSample) BoxWidget(board: i),
              BoxWidget(board: Board(contentType: makeBoard,titleType: nonTitle, contents: [_content]))
            ],
          ),
        )
    );
  }
}