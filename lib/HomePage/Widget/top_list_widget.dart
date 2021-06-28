import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../state.dart';
import '../../Utils/custom_scroll_physics.dart';

class TopListWidget extends StatefulWidget {
  @override
  _TopListWidgetState createState() => _TopListWidgetState();
}

class _TopListWidgetState extends State<TopListWidget> {
  final _controller = ScrollController();
  final List<int> pages = List.generate(6, (index) => index);
  ScrollPhysics _physics;

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.position.haveDimensions && _physics == null) {
        setState(() {
          var dimension = _controller.position.maxScrollExtent / (pages.length - 1);
          _physics = CustomScrollPhysics(itemDimension: 310);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: SafeArea(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          controller: _controller,
          physics: _physics,
          itemCount: pages.length,
          itemBuilder: (context, index) =>
              Container(
                height: double.infinity,
                width: 300,
                margin: EdgeInsets.only(left: index==0 ? 15 : 5, right: index==pages.length-1 ? 15 : 5, top: 15, bottom: 15),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb,
                      color: Colors.yellow,
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "국가장학금 1차 신청",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          Text(
                            "5월 18일 (화) ~ 6월 17일 (목)",
                            style: TextStyle(
                                fontSize: 12,
                              color: Colors.orange
                            ),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: greyColor
                            ),
                            child: Row(
                              children: [
                                Text(
                                    "일정 보기",
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey,)
                              ],
                            ),
                          )
                        ]
                    )
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
