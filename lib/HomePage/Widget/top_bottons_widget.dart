import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../state.dart';

class TopButtonsWidget extends StatelessWidget {
  List<dynamic> item = ["학교홈", "열람실 현황", "포털", "통학 버스", "학사 공지", "학사 일정", "도서관", "웹메일"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 15),
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: greyColor,
                  ),
                  SizedBox(height: 8,),
                  Container(
                    width: 80,
                    alignment: Alignment.center,
                    child: Text(
                      item[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ]
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 5,);
          }
      ),
    );
  }
}