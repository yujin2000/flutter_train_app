import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 출발/도착역 title 변경
      appBar: AppBar(title: Text('출발역')),
      body: Column(
        children: [
          stationList('수서'),
          stationList('동탄'),
          stationList('평택지제'),
          stationList('천안아산'),
          stationList('오송'),
          stationList('대전'),
          stationList('김천구미'),
          stationList('동대구'),
          stationList('경주'),
          stationList('울산'),
          stationList('부산'),
        ],
      ),
    );
  }

  Container stationList(String text) {
    return Container(
      // Text 를 center 로 해도 되지만 전체적으로 center 값을 주고 싶을 때 사용
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // decoration => container 의 크기 따라감
      decoration: BoxDecoration(
        border: Border(
          // Container 밑에만 라인
          bottom: BorderSide(
            width: 1,
            color: Colors.grey[300]!,
          ),
        ),
      ),
    );
  }
}
