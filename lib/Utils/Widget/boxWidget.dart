import 'package:flutter/cupertino.dart';

import '../../state.dart';

class BoxWidget extends StatelessWidget {
  final List<dynamic> items;
  final Function boardType;

  BoxWidget({ this.boardType, this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        padding: EdgeInsets.only(top: 20, bottom: 10),
        decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            for(var i in items) boardType(i, (){})
          ],
        )
    );
  }
}