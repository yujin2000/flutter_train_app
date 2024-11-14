import 'package:flutter/material.dart';

class DepartArrivalStation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        stationText('수서'),
        SizedBox(width: 65),
        Icon(
          Icons.arrow_circle_right_outlined,
          size: 30,
        ),
        SizedBox(width: 65),
        stationText('부산'),
      ],
    );
  }

  Text stationText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.purple,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
