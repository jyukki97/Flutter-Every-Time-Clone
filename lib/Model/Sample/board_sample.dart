import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/content_sample.dart';
import 'package:flutter_app/Utils/Function.dart';
import '../model.dart';

List<Board> firstBoardSample = [
  Board(
      title: "내가 쓴 글",
      icon: Container(
        width: 20,
        height: 20,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff5999ff),
            border: Border.all(
                color: Colors.black,
                width: 1
            ),
            borderRadius: BorderRadius.circular(3)
        ),
        child: Icon(Icons.list_rounded, size: 18,),
      )
  ),
  Board(icon: iconBox(Icons.mode_comment, Color(0xff36d189)), title: "댓글 단 글"),
  Board(icon: iconBox(Icons.star_rounded, Color(0xffdebf10)), title: "스크랩"),
  Board(icon: iconBox(Icons.local_fire_department_rounded, Color(0xffd14e36)), title: "HOT 게시판"),
  Board(icon: iconBox(Icons.emoji_events_rounded, Colors.orange), title: "BEST 게시판"),
];

List<Board> secondBoardSample = [
  Board(title: "자유게시판", isFavorite: true, hasNew: true),
  Board(title: "비밀게시판", isFavorite: true, hasNew: true),
  Board(title: "졸업생게시판", isFavorite: true, hasNew: true),
  Board(title: "시사·이슈", isFavorite: true, hasNew: true),
  Board(title: "새내기게시판", isFavorite: false, hasNew: true),
  Board(title: "장터게시판", isFavorite: false, hasNew: true),
];

List<Board> thirdBoardSample = [
  Board(icon: iconBox(Icons.restaurant_rounded, Colors.orange), title: "오늘의 학식"),
  Board(icon: iconBox(Icons.chat_sharp, Color(0xffd14e36)), title: "강의평가"),
  Board(icon: iconBox(Icons.book, Color(0xff5999ff)), title: "스터디"),
  Board(icon: iconBox(Icons.menu_book_rounded, Colors.green), title: "책방"),
];

List<Board> infoSpreadBoardSample = [
  Board(title: "정보게시판", isFavorite: true, hasNew: true),
  Board(title: "취업·진로", isFavorite: true, hasNew: true),
  Board(title: "공무원 준비·정보·상담", subTitle: "9급, 7급, 경찰, 소방, 군무원 등등", isFavorite: false, hasNew: true),
  Board(title: "CPA 준비", subTitle: "씨파 ㄱㄱ", isFavorite: false, hasNew: true),
  Board(title: "고시 게시판 정보공유", subTitle: "행시.입시.변리사.cpa.로스쿨 등", isFavorite: false, hasNew: false),
  Board(title: "인하대학교 세무사 고시회", subTitle: "세무사 준비생들 및 세무사 합격생을 위한 게시판입니다.", isFavorite: false, hasNew: false),
];

List<Board> promotionSpreadBoardSample = [
  Board(title: "홍보게시판", isFavorite: true, hasNew: true),
  Board(title: "동아리·학회", isFavorite: true, hasNew: true),
];

List<Board> groupSpreadBoardSample = [
  Board(title: "인하대학교 총대의원회", subTitle: "인하대학교 총대의원회 비상대책위원회 입니다.", isFavorite: false, hasNew: false),
];

List<Board> lastBoardSample = [
  Board(title: "컴퓨터공학과", subTitle: "Computer Science Engineering", isFavorite: false, hasNew: true),
  Board(title: "국제통상학과", subTitle: "국제통상학과 게시판입니다", isFavorite: false, hasNew: true),
  Board(title: "행정학과", subTitle: "행정학과 게시판입니다!!", isFavorite: false, hasNew: true),
  Board(title: "한국어문학학과", subTitle: "한국어문학과 당장 모여~", isFavorite: false, hasNew: false),
  Board(title: "미디어커뮤니케이션학과", subTitle: "인하대학교 미디어커뮤니케이션학과 게시판입니다.", isFavorite: false, hasNew: false),
  Board(title: "물리공부방", subTitle: "문제가 썸네일 현태로 보이는 물리게시판입니다^^", isFavorite: false, hasNew: true),
];

List<Board> infoBoardSample = [
  Board(title: "인기 게시물", titleType: moreTitle, contentType: contentWithTitle, contents: popularContentsSample),
  Board(title: "정보게시판", titleType: moreTitle, contentType: contentWithDate, contents: infoContentsSample),
  //Board(title: "취업·진로", titleType: 1, contentType: 2),
  Board(title: "공무원 준비·정보·상담", titleType: moreTitle, contentType: contentWithDate, contents: officialContentsSample),
  Board(title: "CAP 준비", titleType: moreTitle, contentType: contentWithDate, contents: cpaContentsSample),
  Board(title: "고시 게시판 정보공유", titleType: moreTitle, contentType: contentWithDate, contents: examContentsSample),
  Board(title: "인하대학교 세무사 고시회", titleType: moreTitle, contentType: contentWithDate, contents: taxContentsSample),
  //Board(title: "강의평가", titleType: 2, contentType: 3),
];

List<Board> promBoardSample = [
  Board(title: "인기 게시물", titleType: normalTitle, contentType: contentWithTitle, contents: popularContentsSample),
  Board(title: "스터디", titleType: moreTitle, contentType: contentWithDate, contents: infoContentsSample),
  Board(title: "홍보게시판", titleType: moreTitle, contentType: contentWithDate, contents: officialContentsSample),
  Board(title: "동아리·학회", titleType: moreTitle, contentType: contentWithDate, contents: cpaContentsSample),
];

List<Board> groupBoardSample = [
  Board(title: "전체 소식", titleType: normalTitle, contentType: boardNameWithContent, contents: allBoardSample),
];

List<Board> allBoardSample = [
  Board(title: "총대의원회", contents: delegateContentsSample, hasNew: false),
];

List<Board> homePageBoardSample = [
  Board(title: "즐겨찾는 게시판", titleType: moreTitle, contentType: boardNameWithContent, contents: favoriteBoardSample),
  Board(title: "실시간 인기 글", titleType: normalTitle, contentType: contentWithAnonymous, contents: realTimeContentsSample),
  Board(title: "HOT 게시물", titleType: moreTitle, contentType: contentWithDate, contents: cpaContentsSample),
  Board(title: "교내 정보", titleType: moreTitle, contentType: contentWithTitle, contents: popularContentsSample),
  //Board(title: "최근 강의평", titleType: 1, contentType: 1, contents: popularContentsSample),
  //Board(title: "공모전·대외활동", titleType: 1, contentType: 1, contents: popularContentsSample),
  //Board(title: "교내 정보", titleType: 1, contentType: 1, contents: popularContentsSample),
  //Board(title: "채용 정보", titleType: 1, contentType: 1, contents: popularContentsSample),
  //Board(title: "답변을 기다리는 질문", titleType: 1, contentType: 1, contents: popularContentsSample),
  //Board(title: "판매 중인 책", titleType: 1, contentType: 1, contents: popularContentsSample),
];

List<Board> favoriteBoardSample = [
  Board(title: "자유게시판", contents: delegateContentsSample, hasNew: false),
  Board(title: "비밀게시판", contents: delegateContentsSample, hasNew: false),
  Board(title: "시사·이슈", contents: delegateContentsSample, hasNew: false),
  Board(title: "정보게시판", contents: delegateContentsSample, hasNew: false),
  Board(title: "취업·진로", contents: delegateContentsSample, hasNew: false),
  Board(title: "홍보게시판", contents: delegateContentsSample, hasNew: false),
];

