import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/Widget/function/icon_with_number.dart';
import 'package:flutter_app/state.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class NoticePage extends StatefulWidget {
  String title;
  NoticePage({this.title});

  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {

  appbarButtons(icon, name) {
    return ClipOval(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          onLongPress: (){
            showToastMessage(name);
          },
          child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(
                icon,
                color: Colors.black,
              )
          ),
        ),
      ),
    );
  }

  void showToastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        textColor: Colors.white,
        backgroundColor: Colors.black38,
        fontSize: 16.0,

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          color: Colors.black,
          iconSize: 20,
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          appbarButtons(Icons.sync, "새로고침"),
          appbarButtons(Icons.search_rounded, "글 검색"),
          appbarButtons(Icons.more_vert_rounded, "옵션 더보기"),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.separated(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Container(
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
                          "방금",
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
                        "기말점수 너무 궁금하다\n하나 빼고 나온 게 없다..",
                        maxLines: 5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconWithNumber(icon: Icons.thumb_up_alt_outlined, number: 0, color: mainColor),
                        IconWithNumber(icon: Icons.mode_comment_outlined, number: 2, color: blueColor),
                      ],
                    )
                  ],
                )
            );
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 5,
            );
          },
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/banner.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {

        },
        child: Container(
            width: 110,
            height: 45,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(36),
              border: Border.all(
                color: borderColor,
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.edit_outlined, color: mainColor, size: 25,),
                SizedBox(width: 10,),
                Text(
                  "글 쓰기",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
              ],
            )
        ),
      ),
    );
  }
}