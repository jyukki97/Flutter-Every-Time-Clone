import 'package:flutter/cupertino.dart';

class IconWithNumber extends StatelessWidget {
  IconData icon;
  int number;
  Color color;

  IconWithNumber({this.icon, this.color, this.number});

  @override
  Widget build(BuildContext context) {
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
        ),
        SizedBox(width: 5,),
      ],
    );
  }

}