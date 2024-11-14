import 'package:flutter/material.dart';

class StationSelectionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          selectStation('출발역'),
          // 세로선
          Container(
            width: 2,
            height: 50,
            color: Colors.grey[400],
          ),
          selectStation('도착역'),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
    );
  }

  Column selectStation(String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '선택',
          style: TextStyle(fontSize: 50),
        ),
      ],
    );
  }
}
