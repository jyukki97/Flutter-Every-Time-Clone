import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/NoticePage/notice_page.dart';
import 'package:get/get.dart';
import '../../state.dart';

class FavoriteBoardWidget extends StatelessWidget {
  textWidget(title, subtitle){
    return InkWell(
      onTap: () {
        Get.to(NoticePage(title: title,));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Text(
                subtitle,
                maxLines: 1,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87
                ),
              ),
            ),
            Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(3)
              ),
              alignment: Alignment.center,
              child: Text("N", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              print("click");
            },
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "즐겨찾는 게시판",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),

                  ),
                  Row(
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
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          textWidget("자유게시판", "아니 근데 성적 7.1 너무 늦는거 아닌가"),
          SizedBox(height: 10,),
          textWidget("비밀게시판", "entj 이상형이 뭐야???"),
          SizedBox(height: 10,),
          textWidget("시사·이슈", "투기꾼들이"),
          SizedBox(height: 10,),
          textWidget("정보게시판", "시스템반도체 설계전문교육과정 교육생모집"),
          SizedBox(height: 10,),
          textWidget("취업·진로", "엘디플 랜턴십 관련"),
          SizedBox(height: 10,),
          textWidget("홍보게시판", "인하대 후문 '서양다방'에서 이벤트를 진행합니다!"),
          SizedBox(height: 10,),
          textWidget("동아리·학회", "주식 친목 연합동아리 FAANG 3기 모집!!"),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

}