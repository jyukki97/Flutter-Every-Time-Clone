import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Function.dart';
import 'package:flutter_app/state.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {});
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 5, left: 5, right: 5, bottom: 5),
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
              color: Color(0xffe3e3e3),
              borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            children: [
              circleIconButton(Icons.arrow_back_rounded, Color(0xffe3e3e3), 40.0, 20.0, Colors.black,(){ Get.back();}),
              SizedBox(width: 20,),
              Expanded(
                  child: TextField(
                    controller: _controller,
                    cursorColor: mainColor,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                    decoration: InputDecoration(
                        hintText: "게시판 이름",
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: _controller.text.length > 0 ? IconButton(
                            onPressed: _controller.clear,
                            icon: Icon(Icons.clear, color: Colors.black)
                        ) : null
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
      body: Container(),
    );
  }
}