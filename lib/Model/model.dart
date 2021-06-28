import 'package:flutter/cupertino.dart';

class Board {
  final String title;
  String subTitle;
  bool hasNew = false;
  bool isFavorite = false;
  Widget icon;
  Board({this.title, this.hasNew, this.icon, this.isFavorite, this.subTitle});
}

class Content {
  final String boardName;
  final String contents;
  final int like;
  final int comments;
  String title;
  Widget icon;
  DateTime date;
  Content({this.title, this.boardName, this.like, this.comments, this.contents, this.icon, this.date});
}