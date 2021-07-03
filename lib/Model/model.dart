import 'package:flutter/cupertino.dart';

class Board {
  final String title;
  String subTitle;
  bool hasNew = false;
  bool isFavorite = false;
  Widget icon;
  Function titleType;
  Function contentType;
  List<dynamic> contents;
  Board({this.title, this.hasNew, this.icon, this.isFavorite, this.subTitle, this.titleType, this.contentType, this.contents});
}

class Content {
  final String boardName;
  final String content;
  int like;
  int comments;
  bool isRead;
  String title;
  Widget icon;
  DateTime date;
  Content({this.title, this.boardName, this.like, this.comments, this.content, this.icon, this.date, this.isRead});
}