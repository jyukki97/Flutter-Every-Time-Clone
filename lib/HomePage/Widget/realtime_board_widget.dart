import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../state.dart';
import 'function/icon_with_number.dart';

class RealtimeBoardWidget extends StatelessWidget {

  popularityWidget(pageName,contents, date) {
    return InkWell(
      onTap: () {

      },
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(Icons.person, color: Colors.white,),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                      child: Text(
                        "익명",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      )
                  ),
                  Text(
                    date,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  contents,
                  maxLines: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: Text(
                          pageName,
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
    return Container(
      height: 300,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              "실시간 인기 글",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
          popularityWidget(
              "자유게시판", "기말점수 너무 궁금하다\n하나 빼고 나온 게 없다..", "06/23 21:39"),
          popularityWidget("자유게시판", "올해 2학기까지\n풀 비대면 원하는 사람 손!", "06/24 08:37"),
        ],
      ),
    );
  }

}