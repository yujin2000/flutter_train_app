import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_list/widgets/station_list_page.dart';

class StationSelectionBox extends StatelessWidget {
  String? depart;
  String? arrive;
  void Function(String title, String station) onStationChanged;

  StationSelectionBox(this.depart, this.arrive, this.onStationChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        // TODO: 중앙 세로선을 기준으로 움직이지 않도록 고정 필요
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          selectStation('출발역', depart, context),
          // 세로선
          SizedBox(
            width: 2,
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.grey[400]),
            ),
          ),
          selectStation('도착역', arrive, context),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
    );
  }

  Column selectStation(String text, String? station, BuildContext context) {
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
        TextButton(
          onPressed: () {
            // 버튼 누르면 StationListPage 으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return StationListPage(text, onStationChanged);
                },
              ),
            );
          },
          child: Text(
            station == null ? '선택' : station,
            style: TextStyle(fontSize: 40, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
