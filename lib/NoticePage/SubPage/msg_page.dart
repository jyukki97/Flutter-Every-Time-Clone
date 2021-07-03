import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/state.dart';

class MsgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail_outline, size: 50, color: Color(0xffcfcfcf),),
                Text(
                    "받은 쪽지가 없습니다",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),
                ),
                SizedBox(height: 5,),
                Text(
                    "쪽지는 글(댓글)에서 작성자에게 보낼 수 있어요!",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12
                  ),
                )
              ],
            )
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}