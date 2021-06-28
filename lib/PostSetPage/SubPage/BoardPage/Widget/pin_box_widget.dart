import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/model.dart';
import 'package:flutter_app/Utils/Function.dart';
import '../../../../state.dart';

class PinBoxWidget extends StatelessWidget {
  final List<Board> boardList;

  PinBoxWidget({this.boardList});

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
          children: [
            for(var i in boardList) pinWithText(i, (){})
          ],
        )
    );
  }

}