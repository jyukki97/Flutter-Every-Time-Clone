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

contentWithTitle(Content item, tapFunc) {
  return InkWell(
    onTap: tapFunc,
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
            Text(
              item.contents,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.contents,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
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