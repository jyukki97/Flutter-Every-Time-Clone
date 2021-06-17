import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/HomePage/Widget/favorite_board_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_bottons_widget.dart';
import 'package:flutter_app/HomePage/Widget/top_list_widget.dart';
import 'package:flutter_app/state.dart';

class HomePage extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8);
  final List<dynamic> items = [1,2,3,4,5,6,7,8];

  BoxWidget(_width){
    return Container(
      width: _width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopListWidget(),
            TopButtonsWidget(),
            Container(
              margin: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/images/thumnnail.png')
              )
            ),
            FavoriteBoardWidget(),
          ],
        ),
      ),
    );
  }

}