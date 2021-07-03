import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../state.dart';

class GridWidget extends StatelessWidget {
  final List<dynamic> gridItems = [
    [
      {'icon': Icons.person, 'text': "동아리"},
      {'icon': Icons.icecream, 'text': "대외활동"},
      {'icon': Icons.wb_incandescent, 'text': "공모전"},
      {'icon': Icons.menu_book_rounded, 'text': "스터디"},
    ],
    [
      {'icon': Icons.person_pin_sharp, 'text': "취업정보"},
      {'icon': Icons.card_giftcard_rounded, 'text': "이벤트"},
      {'icon': Icons.library_books_rounded, 'text': "커뮤니티"},
      {'icon': Icons.edit, 'text': "게시요청"},
    ]
  ];
  iconWithBox(icon, text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Color(0x251dcdff),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Icon(icon, color: campusColor,),
          ),
          SizedBox(height: 3,),
          Text(
              text,
            style: TextStyle(
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          for (var i in gridItems) Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for(var item in i) iconWithBox(item["icon"], item["text"])
            ],
          )
        ],
      )
    );
  }
}