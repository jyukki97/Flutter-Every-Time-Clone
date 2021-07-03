import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Model/Sample/notice_sample.dart';

class NoticeListPage extends StatefulWidget {
  @override
  _NoticeListPageState createState() => _NoticeListPageState();
}

class _NoticeListPageState extends State<NoticeListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: noticeSample.length,
        itemBuilder: (context, index) {
        var item = noticeSample[index];
        Color _color = item.isRead ? Colors.white : Color(0x15D23E2D);
          return InkWell(
            onTap: () {
              if (!noticeSample[index].isRead) {
                setState(() {
                  noticeSample[index].isRead = true;
                });
              }
            },
            highlightColor: _color,
            splashColor: _color,
            child: Container(
              height: 100,
              color: _color,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Color(0xffcfcfcf),
                      ),
                      borderRadius: BorderRadius.circular(36)
                    ),
                    child: Icon(Icons.edit_outlined, color: Colors.green,),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.boardName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                                "어제 가장 HOT했던 글이에요:${item.title==null ? item.content : item.title}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
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
                      )
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}