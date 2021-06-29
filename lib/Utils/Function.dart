import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/model.dart';
import '../state.dart';

circleIconButton(icon, backColor, boxSize, iconSize, tabFunction) {
  return ClipOval(
    child: Material(
      color: backColor,
      child: InkWell(
        onTap: tabFunction,
        child: SizedBox(
            width: boxSize,
            height: boxSize,
            child: Icon(
              icon,
              color: Colors.black,
              size: iconSize,
            )
        ),
      ),
    ),
  );
}

newBox() {
  return Container(
    width: 10,
    height: 10,
    margin: EdgeInsets.only(left: 5),
    padding: EdgeInsets.all(0.5),
    decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(2)
    ),
    alignment: Alignment.center,
    child: Text("N", style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.bold),),
  );
}

iconBox(icon, color) {
  return Container(
      width:20,
      height:20,
      alignment:Alignment.center,
      child: Icon(icon, color: color));
}

// 타이틀 종류 - 타이틀 없는거, 더보기 있는거, 그냥 타이틀만있는거
nonTitle(Board item) {
  return SizedBox();
}
moreTitle(Board item) {
  return InkWell(
    onTap: () {
      print("click");
    },
    child: Padding(
      padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
normalTitle(Board item) {
  return Container(
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.all(15),
    child: Text(
      item.title,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),
    ),
  );
}

// 게시판 페이지(핀 있는거, 아이콘 있는거)
pinWithText(Board item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(
                  item.isFavorite ? Icons.push_pin_rounded : Icons
                      .push_pin_outlined,
                  color: Colors.grey,
                  size: 20,
                )
            ),
          ),
          SizedBox(width: 20,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      item.title,
                      style: TextStyle(
                          fontSize: 15
                      ),
                    ),
                    SizedBox(width: 5,),
                    item.hasNew ? newBox() : SizedBox(),
                  ],
                ),
                item.subTitle == null
                    ? SizedBox()
                    : Text(
                  item.subTitle,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SizedBox(),
          )
        ],
      ),
    ),
  );
}
iconWithText(Board item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          item.icon,
          SizedBox(width: 30,),
          Expanded(child:
          Text(
            item.title,
            style: TextStyle(
                fontSize: 15
            ),
          ))
        ],
      ),
    ),
  );
}

// 좋아요 or 댓글 갯수
iconWithNumber(icon, number, color) {
  return Row(
    children: [
      Icon(
        icon,
        size: 12,
        color: color,
      ),
      SizedBox(width: 5,),
      Text(
        number.toString(),
        style: TextStyle(
            color: color,
            fontSize: 12
        ),
      )
    ],
  );
}

// 컨텐츠에 타이틀이 있는거, 없는거
contentWithTitle(Content item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            item.title == null
                ? SizedBox()
                : Text(
              item.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                item.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                      item.boardName,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),
                    )
                ),
                iconWithNumber(
                    Icons.thumb_up_alt_outlined, item.like, mainColor),
                SizedBox(width: 5,),
                iconWithNumber(
                    Icons.mode_comment_outlined, item.comments, blueColor),
              ],
            )
          ],
        )
    ),
  );
}
contentWithDate(Content item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                item.content,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                      item.date.month.toString() + "/" + item.date.day.toString(),
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),
                    )
                ),
                iconWithNumber(
                    Icons.thumb_up_alt_outlined, item.like, mainColor),
                SizedBox(width: 5,),
                iconWithNumber(
                    Icons.mode_comment_outlined, item.comments, blueColor),
              ],
            )
          ],
        )
    ),
  );
}
contentWithAnonymous(Content item, tapFunc) {
  return InkWell(
    onTap: () {

    },
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    "${item.date.month.toString().padLeft(2, '0')}"
                        "/${item.date.day.toString().padLeft(2, '0')} ${item.date.hour.toString().padLeft(2, '0')}"
                        ":${item.date.minute.toString().padLeft(2, '0')}",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12
                  ),
                )
              ],
            ),
            SizedBox(height: 5,),
            item.title == null
                ? SizedBox()
                : Text(
              item.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              alignment: Alignment.centerLeft,
              child: Text(
                item.content,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                      item.boardName,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),
                    )
                ),
                iconWithNumber(Icons.thumb_up_alt_outlined, item.like, mainColor),
                SizedBox(width: 5,),
                iconWithNumber(Icons.mode_comment_outlined, item.comments, blueColor),
              ],
            )
          ],
        )
    ),
  );
}

boardNameWithContent(item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            item.title,
            style: TextStyle(
                fontSize: 15,
                color: Colors.black
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Text(
              item.contents[0].content,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.black87
              ),
            ),
          ),
          item.hasNew
              ? newBox()
              : SizedBox()
        ],
      ),
    ),
  );
}
