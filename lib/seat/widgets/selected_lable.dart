import 'package:flutter/material.dart';

class SelectedLable extends StatelessWidget {
  Color? seatBoxColor;
  SelectedLable(this.seatBoxColor);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        lable('선택됨'),
        SizedBox(width: 20),
        lable('선택 안됨'),
      ],
    );
  }

  Row lable(String text) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: text == '선택됨' ? Colors.purple : seatBoxColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        SizedBox(width: 4),
        Text(text)
      ],
    );
  }
}
