import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../state.dart';

class MoreWidget extends StatelessWidget {
  final String title;
  final Function moreFunc;
  final List<dynamic> items;
  final Function boardType;
  MoreWidget({this.title, this.moreFunc, this.items, this.boardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      padding: EdgeInsets.only(top: 5, bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: moreFunc,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),

                  ),
                  Row(
                    children: [
                      Text(
                        "더 보기",
                        style: TextStyle(
                            color: mainColor
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                        color: mainColor,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          for(var i in items) boardType(i, (){})
        ],
      ),
    );
  }

}