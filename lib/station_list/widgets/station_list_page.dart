import 'package:flutter/material.dart';
import 'package:flutter_train_app/home/widgets/home_page.dart';

class StationListPage extends StatelessWidget {
  String titleLabel;
  String? depart;
  String? arrive;
  void Function(String title, String station) onStationChanged;

  StationListPage(
    this.titleLabel,
    this.depart,
    this.arrive,
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
        children: generateStations(depart, arrive, context),
      ),
    );
  }

  // 출발역을 선택한 뒤 도착역을 고를 때 이전에 설정한 출발역을 제외한 목록 출력
  // 도착역을 선택한 뒤 출발역을 고를 때 이전에 설정한 도착역을 제외한 목록 출력
  // 출발/도착역이 지정되지 않은 경우 모든 역 목록 출력
  List<Widget> generateStations(
    String? depart,
    String? arrive,
    BuildContext context,
  ) {
    List<Widget> stations = [];
    if (titleLabel == '출발역' && arrive != null) {
      for (String station in stationNames) {
        if (station != arrive) {
          stations.add(stationWidget(titleLabel, station, context));
        }
      }
    } else if (titleLabel == '도착역' && depart != null) {
      for (String station in stationNames) {
        if (station != depart) {
          stations.add(stationWidget(titleLabel, station, context));
        }
      }
    } else {
      for (String station in stationNames) {
        stations.add(stationWidget(titleLabel, station, context));
      }
    }

    return stations;
  }

  Widget stationWidget(String title, String station, BuildContext context) {
    return GestureDetector(
      onTap: () {
        onStationChanged(title, station);
        // 다시 HomePage 로 이동
        Navigator.pop(context);
      },
      child: Container(
        // Text 를 center 로 해도 되지만 전체적으로 center 값을 주고 싶을 때 사용
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            station,
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
      ),
    );
  }
}
