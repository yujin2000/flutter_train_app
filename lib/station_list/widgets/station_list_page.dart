import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/home_page.dart';

class StationListPage extends StatelessWidget {
  String titleLabel;
  void Function(String title, String station) onStationChanged;

  StationListPage(
    this.titleLabel,
    this.onStationChanged,
  );

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
      appBar: AppBar(title: Text(titleLabel)),
      body: Column(
        children: [
          for (String station in stationNames)
            stationList(titleLabel, station, context)
        ],
      ),
    );
  }

  Container stationList(String title, String station, BuildContext context) {
    return Container(
      // Text 를 center 로 해도 되지만 전체적으로 center 값을 주고 싶을 때 사용
      alignment: Alignment.centerLeft,
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        // 역 선택을 위채 Button 으로 변경
        // TODO: GestureDetector 로도 되는지 확인
        child: TextButton(
          onPressed: () {
            onStationChanged(title, station);
            // 다시 HomePage 로 이동
            Navigator.pop(context);
          },
          child: Text(
            station,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
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
