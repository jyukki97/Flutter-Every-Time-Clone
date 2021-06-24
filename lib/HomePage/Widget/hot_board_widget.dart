import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../state.dart';
import 'function/icon_with_number.dart';

class HotBoardWidget extends StatelessWidget {

  popularityWidget(contents, date) {
    return InkWell(
      onTap: () {

      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  contents,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: Text(
                        date,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),
                      )
                  ),
                  IconWithNumber(icon: Icons.thumb_up_alt_outlined, number: 0, color: mainColor),
                  IconWithNumber(icon: Icons.mode_comment_outlined, number: 2, color: blueColor),
                ],
              )
            ],
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 5, bottom: 15),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              print("click");
            },
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "HOT 게시물",
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
          popularityWidget("기말점수 너무 궁금하다\n하나 빼고 나온 게 없다..", "06/23"),
          popularityWidget("올해 2학기까지\n풀 비대면 원하는 사람 손!", "06/24"),
        ],
      ),
    );
  }

}