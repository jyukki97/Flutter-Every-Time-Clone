import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Model/Sample/type_sample.dart';
import 'package:flutter_app/Model/model.dart';

import '../../../../state.dart';

class BoardBoxWidget extends StatefulWidget {
  final List<Board> boardList;
  final int widgetType;

  BoardBoxWidget({this.boardList, this.widgetType});

  @override
  _BoardBoxWidgetState createState() => _BoardBoxWidgetState();
}

class _BoardBoxWidgetState extends State<BoardBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.only(top: 20, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for(var i in widget.boardList) boardType[widget.widgetType](i, (){})
        ],
      ),
    );
  }
}