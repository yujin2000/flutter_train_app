import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  List<String> stationNames = [
    '수서',
    '동탄',
    '평택지제',
    '천안아산',
    '오송',
    '대전',
    '김천구미',
    '동대구',
    '경주',
    '울산',
    '부산'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 출발/도착역 title 변경
      appBar: AppBar(title: Text('출발역')),
      body: Column(
        children: [for (String station in stationNames) stationList(station)],
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
