import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Model/Sample/type_sample.dart';
import 'package:flutter_app/Model/model.dart';
import '../../state.dart';

class BoxWidget extends StatelessWidget {
  final Board board;

  BoxWidget({this.board});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            board.titleType(board),
            for(var i in board.contents) board.contentType(i, (){})
          ],
        )
    );
  }
}