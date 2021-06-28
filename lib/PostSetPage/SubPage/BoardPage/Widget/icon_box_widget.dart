import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/model.dart';
import '../../../../state.dart';

class IconBoxWidget extends StatelessWidget {
  final List<Board> boardList;

  IconBoxWidget({this.boardList});

  iconWithText(icon, text) {
    return InkWell(
      onTap: () {

      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Row(
          children: [
            icon,
            SizedBox(width: 30,),
            Expanded(child:
            Text(
              text,
              style: TextStyle(
                  fontSize: 15
              ),
            ))
          ],
        ),
      ),
    );
  }

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
          for(var i in boardList) iconWithText(i.icon, i.title)
        ],
      ),
    );
  }

}